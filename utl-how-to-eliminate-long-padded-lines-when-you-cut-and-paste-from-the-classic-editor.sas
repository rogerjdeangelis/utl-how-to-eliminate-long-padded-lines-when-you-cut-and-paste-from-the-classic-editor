%let pgm=utl-how-to-eliminate-long-padded-lines-when-you-cut-and-paste-from-the-classic-editor;

%stop_submission;

how to eliminate long padded lines when you cut and paste from the classic editor

This applies to the1980's  classic editor only?
The other 5 or so sas editors may or may not need this.

how to eliminate long padded lines when you cut and paste from the classic editor

The classic 1980 sas editor pads blank space on the end of editor lines.
The following code removes all the blank spaces on the end of lines and stores the
result in the cliboard. Also not this blank space is needed when editing your program.
I do this every time I paste into SAS-L or github.

 CONTENTS

   PREP
    1 set options cmdmac
    2 put the xpad command macro in your autocall macro folder
    3 define the funtion key

      Key       Definition
      CTL U     xpad

   PROCESS

    1 Highlight the code in the classic 1980s  editor
    2 Hold down the control key and hit the u key
    3 Go to SAS-L and paste the code
    4 realted repos

github
https://tinyurl.com/yc8hx52d
https://github.com/rogerjdeangelis/utl-how-to-eliminate-long-padded-lines-when-you-cut-and-paste-from-the-classic-editor

Another explanation
https://tinyurl.com/4mtfm7nb
https://github.com/rogerjdeangelis/utl-trimming-padded-lines-in-the-classic-editor

/*                    _
__  ___ __   __ _  __| |
\ \/ / `_ \ / _` |/ _` |
 >  <| |_) | (_| | (_| |
/_/\_\ .__/ \__,_|\__,_|
     |_|
*/

%macro xpad / cmd des="Usage: xpad on command line. Remove DMS line padding and copy program to clipbrd";
   /*---- save current program ----*/
   file "catalog 'sasuser.profile.sasinp.source" r;home;note;notesubmit '%xpada;';
   run;
%mend xpad;

%macro xpada ;
   filename clp clear;
   filename clp clipbrd;
   /*---- copy to clipbrd      ----*/
   data _null_;
     infile "catalog 'sasuser.profile.sasinp.source";
     input;
     file clp;
     put _infile_ ;
   run;quit;
%mend xpada;



Put this in your autocall library

Key      Definition

CTL U    xpad




REPO
---------------------------------------------------------------------------------------------------------------------------------

https://github.com/rogerjdeangelis/utl-trimming-padded-lines-in-the-classic-editor

https://github.com/rogerjdeangelis/Creating-command-macros-for-the_1980s-DMS-Classic-Editor
https://github.com/rogerjdeangelis/utl-are-classic-editor-command-macros-fsview-and-fsedit-more-useful-than-viewtable
https://github.com/rogerjdeangelis/utl-classic-editor-comment-out-a-block-of-text
https://github.com/rogerjdeangelis/utl-classic-editor-commnand-macro-to-repair-sas-satement-with-uunbalanced-quotes
https://github.com/rogerjdeangelis/utl-comment-out-a-block-og-code-in-the-classic-1980s-dms-editor
https://github.com/rogerjdeangelis/utl-how-to-set-up-the-classic-1980s-classic-editor
https://github.com/rogerjdeangelis/utl-latest-command-macros-for-the-sas-classic-editor
https://github.com/rogerjdeangelis/utl-location-of-program-folder-and-classic-editor-program-versioning
https://github.com/rogerjdeangelis/utl-never-lose-your-program-poor-mans-version-control-using-the-classic-l980s-sas-editor
https://github.com/rogerjdeangelis/utl-repairing-the-calssic-l980s-display-manager-editor
https://github.com/rogerjdeangelis/utl-sas-classic-editor-function-keys-for-comments
https://github.com/rogerjdeangelis/utl-sas-scripting-commands-only-available-in-the_1980s-classic-editor
https://github.com/rogerjdeangelis/utl-saving-repairing-listing-and-restoring-sas-classic-editor-function-keys
https://github.com/rogerjdeangelis/utl-setting-the-path-of-the-executing-program-in-the-1980s-sas-editor
https://github.com/rogerjdeangelis/utl-setting-your-classic-editor-dms-function-keys-mouse-actions-and-command-line
https://github.com/rogerjdeangelis/utl-setup-notepad--editor-for-use-with-wps-altair-sas
https://github.com/rogerjdeangelis/utl-spell-check-words-in-any-classic-editor-window-ie-pgm-note-log-output
https://github.com/rogerjdeangelis/utl-trimming-padded-lines-in-the-classic-editor
https://github.com/rogerjdeangelis/utl-very-simple-export-and-import-for-csv-files-in-the-classic-l980s-sas-dms-editor
https://github.com/rogerjdeangelis/utl_classic_editor_command_macro_performance_package
https://github.com/rogerjdeangelis/utl_classic_editor_hilite_and_evaluate_math_functions
https://github.com/rogerjdeangelis/utl_classic_editor_keyboard_macros_and_abbreviations
https://github.com/rogerjdeangelis/utl_classic_editor_part_II
https://github.com/rogerjdeangelis/utl_classic_editor_pfkeys_prefix_mouse
https://github.com/rogerjdeangelis/utl_classic_editor_place_comment_box_at_cursor_location_with_single_keystroke
https://github.com/rogerjdeangelis/utl_classic_editor_programatic_cursor_positioning_with_store_cut_and_paste
https://github.com/rogerjdeangelis/utl_classic_editor_seemless_connection_workstation_unix_server
https://github.com/rogerjdeangelis/utl_classic_editor_using_a_prefix_mask_to_facilitate_fixed_column_data_entry
https://github.com/rogerjdeangelis/utl_classic_sas_editor_display_manager_commands_improved
https://github.com/rogerjdeangelis/utl_fun_with_line_printer_graphics_editor
https://github.com/rogerjdeangelis/utl_performance_package_SAS_classic_editor
https://github.com/rogerjdeangelis/utl_sas-classic-editor-point-and-shoot-a-proc-freq
https://github.com/rogerjdeangelis/utl_sas_classic_editor


Youtube
https://tinyurl.com/4jaxhxke
https://studio.youtube.com/channel/UCUzsiGhcv3OFovLJTazTc2w/videos/upload?o=U&filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D
