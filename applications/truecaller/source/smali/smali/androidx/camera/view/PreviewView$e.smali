.class public final enum Landroidx/camera/view/PreviewView$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/camera/view/PreviewView$e;

.field public static final enum b:Landroidx/camera/view/PreviewView$e;

.field public static final synthetic c:[Landroidx/camera/view/PreviewView$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/view/PreviewView$e;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/view/PreviewView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/view/PreviewView$e;->a:Landroidx/camera/view/PreviewView$e;

    .line 2
    new-instance v1, Landroidx/camera/view/PreviewView$e;

    const-string v3, "STREAMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/view/PreviewView$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/view/PreviewView$e;->b:Landroidx/camera/view/PreviewView$e;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/camera/view/PreviewView$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroidx/camera/view/PreviewView$e;->c:[Landroidx/camera/view/PreviewView$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$e;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/view/PreviewView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/view/PreviewView$e;

    return-object p0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/view/PreviewView$e;->c:[Landroidx/camera/view/PreviewView$e;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$e;

    return-object v0
.end method
