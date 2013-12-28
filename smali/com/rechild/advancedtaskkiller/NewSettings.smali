.class public Lcom/rechild/advancedtaskkiller/NewSettings;
.super Landroid/preference/PreferenceActivity;
.source "NewSettings.java"


# instance fields
.field private mAutoKillLevel:Landroid/preference/ListPreference;

.field private mKillFrequency:Landroid/preference/ListPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rechild/advancedtaskkiller/NewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rechild/advancedtaskkiller/NewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/rechild/advancedtaskkiller/NewSettings;->setAutoKill()V

    return-void
.end method

.method static synthetic access$2(Lcom/rechild/advancedtaskkiller/NewSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/rechild/advancedtaskkiller/NewSettings;->setKillFrequencyEnableOrDisable(Ljava/lang/String;)V

    return-void
.end method

.method private setAutoKill()V
    .locals 3

    .prologue
    .line 73
    sget v0, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    if-lez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    sget-wide v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->ScheduleAutoKill(Landroid/content/Context;ZJ)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    sget-wide v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/rechild/advancedtaskkiller/CommonLibrary;->ScheduleAutoKill(Landroid/content/Context;ZJ)V

    goto :goto_0
.end method

.method private setKillFrequencyEnableOrDisable(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mKillFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mKillFrequency:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->addPreferencesFromResource(I)V

    .line 20
    const-string v0, "IsNotificationEnabled"

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 21
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 22
    new-instance v1, Lcom/rechild/advancedtaskkiller/NewSettings$1;

    invoke-direct {v1, p0}, Lcom/rechild/advancedtaskkiller/NewSettings$1;-><init>(Lcom/rechild/advancedtaskkiller/NewSettings;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 32
    sget-boolean v0, Lcom/rechild/advancedtaskkiller/Setting;->INCLUDE_AUTOKILL_FEATURE:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "AutoKillLevelValue"

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mAutoKillLevel:Landroid/preference/ListPreference;

    .line 35
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mAutoKillLevel:Landroid/preference/ListPreference;

    .line 36
    new-instance v1, Lcom/rechild/advancedtaskkiller/NewSettings$2;

    invoke-direct {v1, p0}, Lcom/rechild/advancedtaskkiller/NewSettings$2;-><init>(Lcom/rechild/advancedtaskkiller/NewSettings;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "AutoKillFrequecyValue"

    invoke-virtual {p0, v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mKillFrequency:Landroid/preference/ListPreference;

    .line 52
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mKillFrequency:Landroid/preference/ListPreference;

    .line 53
    new-instance v1, Lcom/rechild/advancedtaskkiller/NewSettings$3;

    invoke-direct {v1, p0}, Lcom/rechild/advancedtaskkiller/NewSettings$3;-><init>(Lcom/rechild/advancedtaskkiller/NewSettings;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/rechild/advancedtaskkiller/NewSettings;->mAutoKillLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rechild/advancedtaskkiller/NewSettings;->setKillFrequencyEnableOrDisable(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 100
    invoke-static {p0}, Lcom/rechild/advancedtaskkiller/Setting;->restoreSettings(Landroid/content/Context;)V

    .line 101
    return-void
.end method
