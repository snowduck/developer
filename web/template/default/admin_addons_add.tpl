<div class="row-fluid">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="admin.php">Home</a> <span class="divider">/</span></li>
            <li><a href="admin.php?w=ad"><?php echo $sprache->heading_addons;?></a> <span class="divider">/</span></li>
            <li class="active"><?php echo $gsprache->add;?></li>
        </ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <form class="form-horizontal" action="admin.php?w=ad&amp;d=ad" enctype="multipart/form-data" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo $token;?>">
            <input type="hidden" name="action" value="ad">
            <input type="hidden" name="import" value="1">
            <div class="control-group">
                <label class="control-label" for="inputUpload"><?php echo $gsprache->import;?></label>
                <div class="controls">
                    <input id="inputUpload" type="file" name="file">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button class="btn btn-primary pull-right" id="inputEdit" type="submit"><i class="icon-upload icon-white"></i></button>
                </div>
            </div>
        </form>
    </div>
</div>
<hr>
<div class="row-fluid">
    <div class="span6">
        <form class="form-horizontal" action="admin.php?w=ad&amp;d=ad&amp;r=ad" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo $token;?>">
            <input type="hidden" name="action" value="ad">
            <div class="control-group">
                <label class="control-label" for="inputGame2"><?php echo $sprache->game2;?></label>
                <div class="controls">
                    <select id="inputGame2" name="shorten">
                        <?php foreach ($table as $table_row){ ?><option value="<?php echo $table_row['shorten'];?>" <?php if($table_row['shorten']==$shorten) echo 'selected="selected"';?>><?php echo $sprache->single?>: <?php echo $table_row['description'];?></option><?php } ?>
                        <?php foreach ($table2 as $table_row2){ ?><option value="<?php echo $table_row2['qstat'];?>" <?php if($table_row2['qstat']==$shorten) echo 'selected="selected"';?>><?php echo $sprache->multi?>: <?php echo $table_row2['description'];?></option><?php } ?>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEditRequires"><?php echo $sprache->requires;?></label>
                <div class="controls">
                    <select id="inputEditRequires" name="depending">
                        <option value="0"><?php echo $gsprache->no;?></option>
                        <?php foreach ($dependings as $depending) echo $depending; ?>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputProtect"><?php echo $sprache->protect;?></label>
                <div class="controls">
                    <select id="inputProtect" name="paddon">
                        <option value="N"><?php echo $gsprache->no;?></option>
                        <option value="Y" <?php if($paddon=='Y') echo 'selected="selected"';?>><?php echo $gsprache->yes;?></option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputType"><?php echo $sprache->type;?></label>
                <div class="controls">
                    <select id="inputType" name="type">
                        <option value="tool"><?php echo $sprache->tool;?></option>
                        <option value="map" <?php if($type=='map') echo 'selected="selected"';?>><?php echo $sprache->map;?></option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputAddon"><?php echo $sprache->addon;?></label>
                <div class="controls"><input id="inputAddon" type="text" name="addon" value="<?php echo $addon;?>"></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputAddon2"><?php echo $sprache->addon2;?></label>
                <div class="controls"><input id="inputAddon2" type="text" name="menudescription" value="<?php echo $menudescription;?>"></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputActive"><?php echo $sprache->active;?></label>
                <div class="controls">
                    <select id="inputActive" name="active">
                        <option value="Y"><?php echo $gsprache->yes;?></option>
                        <option value="N" <?php if($active=='N') echo 'selected="selected"';?>><?php echo $gsprache->no;?></option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputFolders"><?php echo $sprache->folders;?></label>
                <div class="controls"><input id="inputFolders" type="text" name="folder" value="<?php echo $folder;?>"></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputDescription"><?php echo $sprache->description;?></label>
                <div class="controls"><?php foreach ($foundlanguages as $array) echo '<label class="checkbox inline">'.$array['checkbox'].'<img src="images/flags/'.$array['lang'].'.png" alt="Flag: '.$array['lang'].'.png"/></label>';?></div>
            </div>
            <?php foreach ($foundLanguages as $array) { ?>
            <div id="<?php echo $array['lang'];?>" class="control-group <?php echo $array['display'];?>">
                <label class="control-label" for="inputLangs-<?php echo $array['lang'];?>"><img src="images/flags/<?php echo $array['lang'];?>.png" alt="Flag: 16_<?php echo $array['lang'];?>'.png"/></label>
                <div class="controls"><textarea id="inputLangs-<?php echo $array['lang'];?>" name="description_<?php echo $array['lang'];?>"></textarea></div>
            </div>
            <?php } ?>
            <div class="control-group">
                <label class="control-label" for="inputConfigs"><?php echo $sprache->configs;?></label>
                <div class="controls"><textarea id="inputConfigs" rows="5" name="configs"><?php echo $configs;?></textarea></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputStartCmd"><?php echo $sprache->start;?></label>
                <div class="controls"><textarea id="inputStartCmd" rows="5" name="cmd"><?php echo $cmd;?></textarea></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputRmCmd"><?php echo $sprache->rmcmd;?></label>
                <div class="controls"><textarea id="inputRmCmd" rows="5" name="rmcmd"><?php echo $rmcmd;?></textarea></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEdit"></label>
                <div class="controls">
                    <button class="btn btn-primary pull-right" id="inputEdit" type="submit"><i class="icon-edit icon-white"></i></button>
                </div>
            </div>
        </form>
    </div>
</div>