.class final enum Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
.super Ljava/lang/Enum;
.source "DirectAccessActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field public static final enum Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field public static final enum On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 723
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 724
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    const-string v1, "TurningOn"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOn:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 725
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    const-string v1, "TurningOff"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOff:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 726
    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    const-string v1, "On"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    .line 722
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOn:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOff:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->$VALUES:[Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "intermediate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 730
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 731
    iput-boolean p3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition:Z

    .line 732
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 1
    .parameter

    .prologue
    .line 722
    const-class v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 1

    .prologue
    .line 722
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->$VALUES:[Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition:Z

    return v0
.end method