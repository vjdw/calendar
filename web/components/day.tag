<day class={ is-past: isPast } onclick={ toggleDetail }>
    <div>
        <a>{ displayText }</a>
    </div>

    <script>
        var self = this;
        this.displayText = opts.displaytext;
        this.isPast = opts.ispast;
    </script>

    <style>
        day {
            margin: 0.1em;
            border-radius: 0.6em;
            min-width: 3em;
            min-height: 3em;
            background-color: lightslategray;
        }

        day.is-past {
            background-color: darkslategray;
        }
    </style>
</day>