.class public final Le/a/a/c/n/a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/n/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/a/c/n/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/a/c/n/a$c;

.field public static final d:Le/a/a/c/n/a$c;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/a/c/n/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/c/n/a$c;-><init>(I)V

    sput-object v0, Le/a/a/c/n/a$c;->c:Le/a/a/c/n/a$c;

    new-instance v0, Le/a/a/c/n/a$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/a/c/n/a$c;-><init>(I)V

    sput-object v0, Le/a/a/c/n/a$c;->d:Le/a/a/c/n/a$c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/a/c/n/a$c;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/a/c/n/a$c;->b:I

    const-string v1, "view"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/c/n/n;

    invoke-direct {v0, p1}, Le/a/a/c/n/n;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/a/a/c/n/n;

    invoke-direct {v0, p1}, Le/a/a/c/n/n;-><init>(Landroid/view/View;)V

    return-object v0
.end method
