<calendar onclick={ toggleDetail }>

    <day each={ day in days } displaytext='{ day.displayText }' ispast='{ day.isPast }' no-reorder />

    <script>
        var self = this;
        riot.compile('components/day.tag', function () {
            riot.mount('day')
        });

        this.days = [];

        this.on('mount', function () {
            for (var i = -14; i < 1000; i++) {
                var momentDay = moment().add(i, 'days');
                var displayText = momentDay.format('DD/MM');
                var isPast = momentDay.isBefore();
                var d = {
                    displayText: displayText,
                    isPast: isPast
                };
                self.days.push(d);
            }
            self.update();
        });

        toggleDetail(e) {
            var growDiv = this.refs.grow;
            if (growDiv.clientHeight) {
                growDiv.style.height = 0;
            } else {
                var wrapper = this.refs.measuringWrapper;
                growDiv.style.height = wrapper.clientHeight + "px";
            }
        }
    </script>

    <style>
        calendar {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
    </style>

</calendar>