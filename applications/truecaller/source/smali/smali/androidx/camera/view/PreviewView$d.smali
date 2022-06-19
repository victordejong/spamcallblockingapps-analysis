.class public final enum Landroidx/camera/view/PreviewView$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Landroidx/camera/view/PreviewView$d;

.field public static final enum c:Landroidx/camera/view/PreviewView$d;

.field public static final enum d:Landroidx/camera/view/PreviewView$d;

.field public static final enum e:Landroidx/camera/view/PreviewView$d;

.field public static final enum f:Landroidx/camera/view/PreviewView$d;

.field public static final enum g:Landroidx/camera/view/PreviewView$d;

.field public static final synthetic h:[Landroidx/camera/view/PreviewView$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroidx/camera/view/PreviewView$d;

    const-string v1, "FILL_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/view/PreviewView$d;->b:Landroidx/camera/view/PreviewView$d;

    .line 2
    new-instance v1, Landroidx/camera/view/PreviewView$d;

    const-string v3, "FILL_CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/camera/view/PreviewView$d;->c:Landroidx/camera/view/PreviewView$d;

    .line 3
    new-instance v3, Landroidx/camera/view/PreviewView$d;

    const-string v5, "FILL_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/camera/view/PreviewView$d;->d:Landroidx/camera/view/PreviewView$d;

    .line 4
    new-instance v5, Landroidx/camera/view/PreviewView$d;

    const-string v7, "FIT_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/camera/view/PreviewView$d;->e:Landroidx/camera/view/PreviewView$d;

    .line 5
    new-instance v7, Landroidx/camera/view/PreviewView$d;

    const-string v9, "FIT_CENTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/camera/view/PreviewView$d;->f:Landroidx/camera/view/PreviewView$d;

    .line 6
    new-instance v9, Landroidx/camera/view/PreviewView$d;

    const-string v11, "FIT_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroidx/camera/view/PreviewView$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroidx/camera/view/PreviewView$d;->g:Landroidx/camera/view/PreviewView$d;

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/camera/view/PreviewView$d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Landroidx/camera/view/PreviewView$d;->h:[Landroidx/camera/view/PreviewView$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroidx/camera/view/PreviewView$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$d;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/view/PreviewView$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/view/PreviewView$d;

    return-object p0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$d;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/view/PreviewView$d;->h:[Landroidx/camera/view/PreviewView$d;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$d;

    return-object v0
.end method
