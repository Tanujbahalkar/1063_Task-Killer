.class public Lcom/rechild/advancedtaskkiller/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final ACTION_DETAIL:I = 0x4

.field public static final ACTION_IGNORE:I = 0x3

.field public static final ACTION_KILL:I = 0x0

.field public static final ACTION_MENU:I = 0x5

.field public static final ACTION_SELECT:I = 0x1

.field public static final ACTION_SWITCH:I = 0x2

.field public static AUTO_KILL_FREQUENCY:J = 0x0L

.field public static AUTO_KILL_LEVEL:I = 0x0

.field public static final AUTO_KILL_LEVEL_AGGRESSIVE:I = 0x2

.field public static final AUTO_KILL_LEVEL_CRAZY:I = 0x3

.field public static final AUTO_KILL_LEVEL_DISABLE:I = 0x0

.field public static final AUTO_KILL_LEVEL_SAFE:I = 0x1

.field public static CLICK_ACTION:I = 0x0

.field private static Editor:Landroid/content/SharedPreferences$Editor; = null

.field public static IGNORE_SERVICE_FRONT_APP:Z = false

.field public static INCLUDE_AUTOKILL_FEATURE:Z = false

.field public static IS_AUTOSTART_ENABLE:Z = false

.field public static IS_FROYO_OR_LATER:Z = false

.field public static IS_LOG_ENABLE:Z = false

.field public static IS_NOTIFICATION_ENABLE:Z = false

.field public static ITEM_HEIGHT:I = 0x0

.field public static final KEY_AUTOSTART:Ljava/lang/String; = "IsAutoStartEnabled"

.field public static final KEY_AUTO_KILL_FREQUENCY:Ljava/lang/String; = "AutoKillFrequecyValue"

.field public static final KEY_AUTO_KILL_LEVEL:Ljava/lang/String; = "AutoKillLevelValue"

.field public static final KEY_CLICK_ACTION:Ljava/lang/String; = "ClickActionValue"

.field public static final KEY_IGNORE_SERVICE_FRONT_APP:Ljava/lang/String; = "IgnoreServiceFrontApp"

.field public static final KEY_IS_FROYO_OR_LATER:Ljava/lang/String; = "IsFroyoOrLater"

.field public static final KEY_ITEM_HEIGHT:Ljava/lang/String; = "ItemHeight"

.field public static final KEY_LONG_PRESS_ACTION:Ljava/lang/String; = "LongPressActionValue"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "IsNotificationEnabled"

.field public static final KEY_PREFS_NAME:Ljava/lang/String; = "AdvTaskKillerSettings"

.field public static final KEY_SECURITY_LEVEL:Ljava/lang/String; = "SecurityLevel"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "VersionCode"

.field public static LONG_PRESS_ACTION:I = 0x0

.field private static final LR:Ljava/lang/String; = "\r\n"

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static SECURITY_LEVEL:I = 0x0

.field public static final SECURITY_LEVEL_HIGH:I = 0x0

.field public static final SECURITY_LEVEL_LOW:I = 0xa

.field public static final SECURITY_LEVEL_MEDIUM:I = 0x5

.field public static Settings:Landroid/content/SharedPreferences;

.field public static VERSION_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    sput-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_LOG_ENABLE:Z

    .line 11
    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->INCLUDE_AUTOKILL_FEATURE:Z

    .line 12
    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    .line 13
    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_AUTOSTART_ENABLE:Z

    .line 45
    const/16 v0, 0x24

    sput v0, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    .line 47
    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->CLICK_ACTION:I

    .line 48
    const/4 v0, 0x5

    sput v0, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    .line 49
    sput v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    .line 50
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    .line 51
    sput v2, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    .line 52
    sput v2, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    .line 53
    sput-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    .line 54
    sput-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_FROYO_OR_LATER:Z

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0
    .parameter "reference"
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p2}, Lcom/rechild/advancedtaskkiller/Setting;->restoreSettings(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static GetAllValues()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AutoKillFrequecyValue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "AutoKillLevelValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "IsNotificationEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SecurityLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "LongPressActionValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ClickActionValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->CLICK_ACTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ItemHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "IsAutoStartEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_AUTOSTART_ENABLE:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "VersionCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "IsFroyoOrLater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IS_FROYO_OR_LATER:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "IgnoreServiceFrontApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method public static getAutoKillInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    const-string v0, "Auto-Kill: "

    .line 191
    .local v0, info:Ljava/lang/String;
    sget v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    if-nez v1, :cond_0

    .line 193
    const-string v1, ""

    .line 203
    :goto_0
    return-object v1

    .line 195
    :cond_0
    sget-wide v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sget-object v3, Lcom/rechild/advancedtaskkiller/CommonLibrary;->NextRun:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 203
    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static restoreSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "IsNotificationEnabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "IsNotificationEnabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    .line 72
    :cond_0
    const-string v1, "IsAutoStartEnabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "IsAutoStartEnabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_AUTOSTART_ENABLE:Z

    .line 76
    :cond_1
    const-string v1, "ClickActionValue"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "ClickActionValue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->CLICK_ACTION:I

    .line 80
    :cond_2
    const-string v1, "LongPressActionValue"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    const-string v1, "LongPressActionValue"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    .line 84
    :cond_3
    const-string v1, "AutoKillLevelValue"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const-string v1, "AutoKillLevelValue"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    .line 88
    :cond_4
    const-string v1, "AutoKillFrequecyValue"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    const-string v1, "AutoKillFrequecyValue"

    sget-wide v2, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    .line 92
    :cond_5
    const-string v1, "ItemHeight"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    const-string v1, "ItemHeight"

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->ITEM_HEIGHT:I

    .line 96
    :cond_6
    const-string v1, "SecurityLevel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    const-string v1, "SecurityLevel"

    sget v2, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    .line 100
    :cond_7
    const-string v1, "VersionCode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    const-string v1, "VersionCode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    .line 104
    :cond_8
    const-string v1, "IgnoreServiceFrontApp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    const-string v1, "IgnoreServiceFrontApp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    .line 108
    :cond_9
    const-string v1, "IsFroyoOrLater"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 110
    const-string v1, "IsFroyoOrLater"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rechild/advancedtaskkiller/Setting;->IS_FROYO_OR_LATER:Z

    .line 112
    :cond_a
    sget-object v1, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_b

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    .line 116
    :cond_b
    return-void
.end method

.method public static setAutoKillFrequency(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 155
    sput-wide p0, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_FREQUENCY:J

    .line 156
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AutoKillFrequecyValue"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void
.end method

.method public static setAutoStart(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 127
    sput-boolean p0, Lcom/rechild/advancedtaskkiller/Setting;->IS_AUTOSTART_ENABLE:Z

    .line 128
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsAutoStartEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public static setClickAction(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 134
    sput p0, Lcom/rechild/advancedtaskkiller/Setting;->CLICK_ACTION:I

    .line 135
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ClickActionValue"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 136
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public static setIgnoreServiceFrontApp(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 176
    sput-boolean p0, Lcom/rechild/advancedtaskkiller/Setting;->IGNORE_SERVICE_FRONT_APP:Z

    .line 177
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IgnoreServiceFrontApp"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method public static setIsFroyoOrLater(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 183
    sput-boolean p0, Lcom/rechild/advancedtaskkiller/Setting;->IS_FROYO_OR_LATER:Z

    .line 184
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsFroyoOrLater"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method

.method public static setKillLevel(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 148
    sput p0, Lcom/rechild/advancedtaskkiller/Setting;->AUTO_KILL_LEVEL:I

    .line 149
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AutoKillLevelValue"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public static setLongPressAction(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 141
    sput p0, Lcom/rechild/advancedtaskkiller/Setting;->LONG_PRESS_ACTION:I

    .line 142
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LongPressActionValue"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public static setNotification(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 120
    sput-boolean p0, Lcom/rechild/advancedtaskkiller/Setting;->IS_NOTIFICATION_ENABLE:Z

    .line 121
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsNotificationEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public static setSecurityLevel(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 162
    sput p0, Lcom/rechild/advancedtaskkiller/Setting;->SECURITY_LEVEL:I

    .line 163
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SecurityLevel"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void
.end method

.method public static setVersionCode(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 169
    sput p0, Lcom/rechild/advancedtaskkiller/Setting;->VERSION_CODE:I

    .line 170
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VersionCode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    sget-object v0, Lcom/rechild/advancedtaskkiller/Setting;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method
