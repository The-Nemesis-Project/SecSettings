.class Lcom/android/settings/wfd/WfdPickerActivity$20;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$20;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 2244
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$20;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4600(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f0b046a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2249
    .local v1, aniImg:Landroid/widget/ImageView;
    const v3, 0x7f02052c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2252
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 2253
    .local v2, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2255
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$20;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const-string v4, "power"

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4700(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2256
    .local v0, PowerMgr:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$20;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v4, 0xa

    const-string v5, "WfdPickerActivity"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4802(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 2258
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity$20;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/32 v4, 0x15f90

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2259
    const-string v3, "WfdPickerActivity"

    const-string v4, "WfdPicker WakeLock...this will be released automatically 90 secs after..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    return-void
.end method
