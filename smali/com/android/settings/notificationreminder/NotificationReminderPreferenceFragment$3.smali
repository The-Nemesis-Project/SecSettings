.class Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$3;
.super Ljava/lang/Object;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$3;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # getter for: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$200(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
