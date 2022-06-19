.class public final Le/a/b3/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/b3/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b3/h;

    invoke-direct {v0}, Le/a/b3/h;-><init>()V

    sput-object v0, Le/a/b3/h;->b:Le/a/b3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    instance-of v0, p1, Le/a/b3/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/b3/d;

    return-object p1
.end method
