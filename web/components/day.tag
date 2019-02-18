<day class={ is-today: isToday, is-workday: isWorkDay, is-past: isPast, is-important: isImportant } onclick={ toggleImportant }>
    <div>
        <a>{ displayText }</a>
    </div>

    <script>
        var self = this;
        this.displayText = opts.displaytext;
        this.isToday = opts.istoday;
        this.isWorkDay = opts.isworkday;
        this.isPast = opts.ispast;
        this.isImportant = false;

        toggleImportant(e) {
            this.isImportant = !this.isImportant;
        }
    </script>

    <style>
        day {
            font-family: sans-serif;
            margin: 0.1em;
            border-radius: 0.6em;
            min-width: 3em;
            min-height: 3em;
            background-color: lightslategray;
        }

        day>div {
            margin: 4.2em;
        }

        day.is-workday {
            background-color: gainsboro;
        }

        day.is-past {
            background-color: darkslategray;
        }

        day.is-important {
            background-color: orangered;
        }

        day.is-today {
            background-color: #ff8;
        }
    </style>
</day>