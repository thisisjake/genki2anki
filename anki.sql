PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE col (
    id              integer primary key,
    crt             integer not null,
    mod             integer not null,
    scm             integer not null,
    ver             integer not null,
    dty             integer not null,
    usn             integer not null,
    ls              integer not null,
    conf            text not null,
    models          text not null,
    decks           text not null,
    dconf           text not null,
    tags            text not null
);
INSERT INTO "col" VALUES(1,1477209600,1488940597408,1488940597329,11,0,0,0,'{"nextPos": 1, "estTimes": true, "activeDecks": [1], "sortType": "noteFld", "timeLim": 0, "sortBackwards": false, "addToCur": true, "curDeck": 1, "newBury": true, "newSpread": 0, "dueCounts": true, "curModel": "1488940597330", "collapseTime": 1200}','{"1342696646292": {"vers": [], "name": "Japanese", "tags": [], "did": 1488864261175, "usn": -1, "req": [[0, "any", [1, 2]], [1, "any", [0, 3]]], "flds": [{"name": "Meaning", "media": [], "sticky": false, "rtl": false, "ord": 0, "font": "Arial", "size": 12}, {"name": "Reading", "media": [], "sticky": false, "rtl": false, "ord": 1, "font": "Arial", "size": 12}, {"size": 20, "name": "Kanji", "media": [], "rtl": false, "ord": 2, "font": "Arial", "sticky": false}, {"name": "Picture", "media": [], "sticky": false, "rtl": false, "ord": 3, "font": "Arial", "size": 20}, {"name": "Audio", "media": [], "sticky": false, "rtl": false, "ord": 4, "font": "Arial", "size": 20}], "sortf": 0, "latexPre": "\\documentclass[12pt]{article}\n\\special{papersize=3in,5in}\n\\usepackage{amssymb,amsmath}\n\\pagestyle{empty}\n\\setlength{\\parindent}{0in}\n\\begin{document}\n", "tmpls": [{"name": "Recognition", "qfmt": "<span style=\"font-size: 50px; \" id=\"kanji\" class=\"hidekana\">{{Kanji}}</span>\n{{Reading}}", "did": null, "bafmt": "", "afmt": "{{FrontSide}}\n\n<span id=\"audio\" style=\"display:none;\">{{Audio}}</span>\n\n<hr id=answer>\n\n{{#Picture}}\n{{Picture}}\n</br>\n{{/Picture}}\n\n<span style=\"font-size: 50px; \">{{Meaning}}</span>\n\n</br>\n\n<script>\n\tdocument.getElementById(''kanji'').classList.remove(''hidekana'');\n</script>", "ord": 0, "bqfmt": ""}, {"name": "Recall", "qfmt": "{{Meaning}}\n</br>\n{{#Picture}}\n{{Picture}}\n{{/Picture}}", "did": null, "bafmt": "", "afmt": "{{FrontSide}}\n\n<hr id=answer>\n\n<span style=\"font-size: 50px; \">{{Kanji}}</span>\n{{Reading}}\n<span style=\"display:none;\">{{Audio}}</span>", "ord": 1, "bqfmt": ""}], "latexPost": "\\end{document}", "type": 0, "id": 1342696646292, "css": ".card {\n font-family: arial;\n font-size: 20px;\n text-align: center;\n color: black;\n background-color: white;\n}\n\n.card1 { background-color: #FFFFFF; }\n.card2 { background-color: #FFFFFF; }\n\n.hidekana ruby rt{\n visibility: hidden;\n}\n\nruby:hover rt{\n visibility: visible;\n}", "mod": 1488940579}}','{"1": {"desc": "", "name": "Default", "extendRev": 50, "usn": 0, "collapsed": false, "newToday": [0, 0], "timeToday": [0, 0], "dyn": 0, "extendNew": 10, "conf": 1, "revToday": [0, 0], "lrnToday": [0, 0], "id": 1, "mod": 1488940597}, "1488864261175": {"extendRev": 50, "collapsed": false, "newToday": [135, 0], "timeToday": [135, 0], "dyn": 0, "extendNew": 10, "conf": 1, "revToday": [135, 0], "lrnToday": [135, 0], "id": 1488864261175, "mod": 1488928931, "name": "Genki Vocab", "usn": -1, "browserCollapsed": true, "mid": 1342696646292, "desc": ""}}','{"1": {"name": "Default", "replayq": true, "lapse": {"leechFails": 8, "minInt": 1, "delays": [10], "leechAction": 0, "mult": 0}, "rev": {"perDay": 100, "fuzz": 0.05, "ivlFct": 1, "maxIvl": 36500, "ease4": 1.3, "bury": true, "minSpace": 1}, "timer": 0, "maxTaken": 60, "usn": 0, "new": {"perDay": 20, "delays": [1, 10], "separate": true, "ints": [1, 4, 7], "initialFactor": 2500, "bury": true, "order": 1}, "mod": 0, "id": 1, "autoplay": true}}','{}');
CREATE TABLE notes (
    id              integer primary key,   /* 0 */
    guid            text not null,         /* 1 */
    mid             integer not null,      /* 2 */
    mod             integer not null,      /* 3 */
    usn             integer not null,      /* 4 */
    tags            text not null,         /* 5 */
    flds            text not null,         /* 6 */
    sfld            integer not null,      /* 7 */
    csum            integer not null,      /* 8 */
    flags           integer not null,      /* 9 */
    data            text not null          /* 10 */
);
-- INSERT INTO "notes" VALUES(1488865542674,'PhT.MSseMf',1342696646292,1488940277,-1,' ch3 noun ','Musicおんがく<img src="mds_L03_02.png" /><img src="ill_L03_02.png" />[sound:mds_L03_02.mp3]','Music',319971531,0,'');
CREATE TABLE cards (
    id              integer primary key,   /* 0 */
    nid             integer not null,      /* 1 */
    did             integer not null,      /* 2 */
    ord             integer not null,      /* 3 */
    mod             integer not null,      /* 4 */
    usn             integer not null,      /* 5 */
    type            integer not null,      /* 6 */
    queue           integer not null,      /* 7 */
    due             integer not null,      /* 8 */
    ivl             integer not null,      /* 9 */
    factor          integer not null,      /* 10 */
    reps            integer not null,      /* 11 */
    lapses          integer not null,      /* 12 */
    left            integer not null,      /* 13 */
    odue            integer not null,      /* 14 */
    odid            integer not null,      /* 15 */
    flags           integer not null,      /* 16 */
    data            text not null          /* 17 */
);
-- INSERT INTO "cards" VALUES(1488865556197,1488865542674,1488864261175,0,1488865556,0,0,0,76,0,0,0,0,0,0,0,0,'');
-- INSERT INTO "cards" VALUES(1488865556198,1488865542674,1488864261175,1,1488865556,0,0,0,76,0,0,0,0,0,0,0,0,'');
CREATE TABLE revlog (
    id              integer primary key,
    cid             integer not null,
    usn             integer not null,
    ease            integer not null,
    ivl             integer not null,
    lastIvl         integer not null,
    factor          integer not null,
    time            integer not null,
    type            integer not null
);
CREATE TABLE graves (
    usn             integer not null,
    oid             integer not null,
    type            integer not null
);
ANALYZE sqlite_master;
INSERT INTO "sqlite_stat1" VALUES('col',NULL,'1');
CREATE INDEX ix_notes_usn on notes (usn);
CREATE INDEX ix_cards_usn on cards (usn);
CREATE INDEX ix_revlog_usn on revlog (usn);
CREATE INDEX ix_cards_nid on cards (nid);
CREATE INDEX ix_cards_sched on cards (did, queue, due);
CREATE INDEX ix_revlog_cid on revlog (cid);
CREATE INDEX ix_notes_csum on notes (csum);
COMMIT;