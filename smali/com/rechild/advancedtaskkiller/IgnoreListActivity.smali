.class public Lcom/rechild/advancedtaskkiller/IgnoreListActivity;
.super Landroid/app/Activity;
.source "IgnoreListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static _IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

.field private static _IgnoredAppSettings:Landroid/content/SharedPreferences;


# instance fields
.field private _Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

.field private _DetailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _PackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private SetIgnore(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_PackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    sget-object v1, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/rechild/advancedtaskkiller/IgnoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->clearIgnoreList()V

    return-void
.end method

.method static synthetic access$1(Lcom/rechild/advancedtaskkiller/IgnoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->refresh()V

    return-void
.end method

.method static synthetic access$2(Lcom/rechild/advancedtaskkiller/IgnoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->buildRecommendedIgnoreList()V

    return-void
.end method

.method private buildRecommendedIgnoreList()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "com.android.inputmethod.latin"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 146
    const-string v0, "com.android.inputmethod.pinyin"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 147
    const-string v0, "com.android.alarmclock"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 148
    const-string v0, "com.android.providers.media"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 149
    const-string v0, "com.android.mms"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 150
    const-string v0, "com.android.deskclock"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 151
    const-string v0, "com.android.calendar"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 152
    const-string v0, "com.android.voicedialer"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 153
    const-string v0, "android.process.media"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 154
    const-string v0, "com.android.providers.calendar"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 155
    const-string v0, "com.android.clock"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 156
    const-string v0, "com.android.providers.telephony"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 157
    const-string v0, "com.android.heroled"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 158
    const-string v0, "com.android.music"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 159
    const-string v0, "com.android.vending"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 160
    const-string v0, "com.android.wallpaper"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 161
    const-string v0, "com.android.bluetooth"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 164
    const-string v0, "com.google.android.inputmethod.pinyin"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.google.android.providers.gmail"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 166
    const-string v0, "com.google.android.apps.gtalkservice"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 167
    const-string v0, "com.google.android.googleapps"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 168
    const-string v0, "com.google.process.gapps"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 169
    const-string v0, "com.google.android.talk"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 170
    const-string v0, "com.google.android.gm"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 171
    const-string v0, "com.google.android.apps.uploader"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 172
    const-string v0, "com.google.android.apps.maps:FriendService"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 174
    const-string v0, "com.htc.AddProgramWidget"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 175
    const-string v0, "com.htc.android.worldclock"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 176
    const-string v0, "com.htc.photo.widgets"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 177
    const-string v0, "com.htc.music"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 178
    const-string v0, "com.htc.android.mail"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 179
    const-string v0, "com.htc.elroy.Weather"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 180
    const-string v0, "com.htc.calendar"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 181
    const-string v0, "com.htc.htctwitter"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 182
    const-string v0, "com.htc.socialnetwork.accountmanager"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 184
    const-string v0, "com.motorola.widgetapp.weather"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 185
    const-string v0, "com.motorola.android.audioeffect"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 186
    const-string v0, "com.motorola.widget.apncontrol"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 187
    const-string v0, "com.motorola.thumbnailservice"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 188
    const-string v0, "com.motorola.usb"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 189
    const-string v0, "com.motorola.atcmd"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 190
    const-string v0, "com.motorola.android.motophoneportal.androidui"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 191
    const-string v0, "com.motorola.android.vvm"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 194
    const-string v0, "com.timsu.astrid"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 195
    const-string v0, "com.weather.Weather"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 196
    const-string v0, "jp.aplix.midp"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 197
    const-string v0, "jp.aplix.midp.factory"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 198
    const-string v0, "com.svox.pico"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 199
    const-string v0, "com.tmobile.myfaves"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 200
    const-string v0, "com.mclaughlin.HeroLED"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 203
    const-string v0, "com.motorola.blur.contacts"

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->SetIgnore(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method private clearIgnoreList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const-string v2, "IgnoredPackage"

    invoke-virtual {p0, v2, v3}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, ignoreList:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const v2, 0x7f06000b

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.method private refresh()V
    .locals 8

    .prologue
    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_DetailList:Ljava/util/ArrayList;

    .line 68
    sget-object v6, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 69
    .local v0, apps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 70
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    new-instance v6, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    iget-object v7, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_DetailList:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    .line 84
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;->setCheckBoxEnable(Z)V

    .line 85
    const v6, 0x7f070011

    invoke-virtual {p0, v6}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 86
    .local v5, listView:Landroid/widget/ListView;
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_Adapter:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ProcessListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    return-void

    .line 72
    .end local v5           #listView:Landroid/widget/ListView;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    .local v3, entry:Ljava/util/Map$Entry;
    :try_start_0
    new-instance v1, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v1, p0, v6}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .local v1, detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    iget-object v6, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_DetailList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1           #detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 80
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private validateIgnoreList()V
    .locals 5

    .prologue
    .line 111
    sget-object v3, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 113
    .local v2, packageName:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    sget-object v3, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void

    .line 115
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #packageName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 117
    .restart local v2       #packageName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_PackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 120
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v2, "IgnoredPackage"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    .line 35
    sget-object v2, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    .line 36
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->setContentView(I)V

    .line 37
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 39
    .local v0, btnClearIgnoreList:Landroid/widget/Button;
    new-instance v2, Lcom/rechild/advancedtaskkiller/IgnoreListActivity$1;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity$1;-><init>(Lcom/rechild/advancedtaskkiller/IgnoreListActivity;)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    .local v1, btnRecommendedIgnoreList:Landroid/widget/Button;
    new-instance v2, Lcom/rechild/advancedtaskkiller/IgnoreListActivity$2;

    invoke-direct {v2, p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity$2;-><init>(Lcom/rechild/advancedtaskkiller/IgnoreListActivity;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_PackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->refresh()V

    .line 62
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;

    .line 103
    .local v0, lvi:Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;
    sget-object v1, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, v0, Lcom/rechild/advancedtaskkiller/TaskListAdapters$ListViewItem;->detailProcess:Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;

    invoke-virtual {v2}, Lcom/rechild/advancedtaskkiller/ProcessDetailInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    sget-object v1, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->_IgnoredAppEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/IgnoreListActivity;->refresh()V

    .line 106
    return-void
.end method
