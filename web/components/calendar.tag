<calendar>

    <day each={ day in days } displaytext='{ day.displayText }' istoday='{ day.isToday }' isworkday='{ day.isWorkDay }' ispast='{ day.isPast }' no-reorder />

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
                var isToday = momentDay.isSame(moment(), 'day');
                var isPast = momentDay.isBefore();
                var isWorkDay = momentDay.day() !== 6 && momentDay.day() !== 0;
                var d = {
                    displayText: displayText,
                    isToday: isToday,
                    isWorkDay: isWorkDay,
                    isPast: isPast
                };
                self.days.push(d);
            }
            self.update();
        });
    </script>

    <style>
        calendar {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }
    </style>

</calendar>