.class Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SafetyCareEmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareEmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareEmergencyMode;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings/safetycare/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "reason"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x8

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings/safetycare/SafetyCareEmergencyMode;

    # getter for: Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->access$000(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;->this$0:Lcom/android/settings/safetycare/SafetyCareEmergencyMode;

    # getter for: Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->access$000(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method