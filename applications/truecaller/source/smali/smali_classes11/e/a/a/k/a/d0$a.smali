.class public final Le/a/a/k/a/d0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/d0;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/a/y0/u;Lo3/a;Lo3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/a/k/q<",
        "Le/a/a/k/w;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/k/a/d0;


# direct methods
.method public constructor <init>(Le/a/a/k/a/d0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/d0$a;->b:Le/a/a/k/a/d0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/d0$a;->b:Le/a/a/k/a/d0;

    .line 2
    iget-object v0, v0, Le/a/a/k/a/d0;->h:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/t;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object v0

    return-object v0
.end method
