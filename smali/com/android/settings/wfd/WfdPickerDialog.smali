.class public Lcom/android/settings/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mConfirmSoundID:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mMasterStreamVolume:I

.field private mRingerMode:I

.field private mShowMainDlg:Z

.field private mShowWelcomeDlg:Z

.field mWelcomeLayout:Landroid/widget/LinearLayout;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

.field private mWriteIfSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-void
.end method

.method private connWithoutMainDlg()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0477

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 170
    const/16 v7, 0xb

    .line 171
    .local v7, DIALOG_AUTO_CONNECT:I
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 172
    :cond_0
    const-string v0, "WfdPickerDialog"

    const-string v1, "Silent mode or volume is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    :goto_0
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setAutoConnStarted()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v7}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialogp(I)V

    .line 182
    return-void

    .line 174
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private initWfdPickerDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0477

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 188
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 266
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 268
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 278
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 274
    :pswitch_0
    const-string v1, "WfdPickerDialog"

    const-string v2, "isWfdConnected >> true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x1

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 220
    :cond_0
    return-void
.end method

.method changeToScan()V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09049c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void
.end method

.method changeToStop()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09049c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 129
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09049c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->startScanningWfdPickerDialog()V

    .line 144
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    .end local v0           #mScanString:Ljava/lang/String;
    .end local v1           #mStopString:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f0b047c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdPickerDialog;->setDefaultKeyMode(I)V

    .line 60
    const v3, 0x7f0401a8

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v3, "wfd"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wfd/WfdManager;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 66
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 80
    :cond_2
    const v3, 0x7f0904c8

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->setTitle(I)V

    .line 82
    const v3, 0x7f0b047c

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    .line 83
    const v3, 0x7f0b047d

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    .line 84
    const v3, 0x7f0b047e

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    .line 86
    const v3, 0x7f0b0478

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    .line 87
    const v3, 0x7f0b0475

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 90
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_3

    .line 95
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 97
    :cond_3
    sget-object v3, Lcom/android/settings/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, p0, v4, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    sput v3, Lcom/android/settings/wfd/WfdPickerDialog;->mConfirmSoundID:I

    .line 100
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 101
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mRingerMode:I

    .line 102
    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    .line 104
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMainDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteIfSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWelcomeDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v3, :cond_4

    .line 108
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v3, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 111
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_6

    .line 112
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    goto :goto_0

    .line 115
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "WfdPickerDialog"

    const-string v2, "going to ACTION_WRITE_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intentToPicker:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "called_by_nfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->startActivity(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    .line 263
    .end local v0           #intentToPicker:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 159
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 163
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 224
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 225
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, runningTaskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 227
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 228
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v3, "com.samsung.groupcast.start.StartActivity"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 233
    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_0

    .line 243
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 247
    :cond_0
    return-void
.end method
