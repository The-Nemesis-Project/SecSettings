.class Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Landroid/os/CountDownTimer;
.source "PersonalPageConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 347
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    #calls: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    .line 348
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090700

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 338
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 339
    .local v0, secondsCountdown:I
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f090701

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method
