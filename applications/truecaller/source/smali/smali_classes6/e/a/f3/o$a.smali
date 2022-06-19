.class public final Le/a/f3/o$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f3/o;-><init>(Ls1/w/f;Ls1/w/f;Lo3/a;Landroid/content/Context;Lo3/a;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/w/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f3/o;


# direct methods
.method public constructor <init>(Le/a/f3/o;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/o$a;->b:Le/a/f3/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f3/o$a;->b:Le/a/f3/o;

    .line 2
    iget-object v0, v0, Le/a/f3/o;->d:Ls1/w/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v1, v2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
