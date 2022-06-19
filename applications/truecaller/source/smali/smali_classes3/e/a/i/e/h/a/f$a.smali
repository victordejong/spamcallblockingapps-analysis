.class public Le/a/i/e/h/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/f;->w(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/h/b/b;

.field public final synthetic b:Le/a/i/e/h/a/f;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/f;Le/a/i/e/h/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/f$a;->b:Le/a/i/e/h/a/f;

    iput-object p2, p0, Le/a/i/e/h/a/f$a;->a:Le/a/i/e/h/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/w/d;

    .line 2
    iget-object v0, p0, Le/a/i/e/h/a/f$a;->b:Le/a/i/e/h/a/f;

    iget-object v1, p0, Le/a/i/e/h/a/f$a;->a:Le/a/i/e/h/b/b;

    .line 3
    invoke-virtual {v0, v1, p1}, Le/a/i/e/h/a/f;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    :goto_0
    return-object p1
.end method
