.class public final Le/a/l/p2/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/s;-><init>(Lo3/a;Lo3/a;Le/a/o5/f0;Le/a/o5/x1;Lo3/a;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/p2/s;


# direct methods
.method public constructor <init>(Le/a/l/p2/s;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/s$a;->a:Le/a/l/p2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/l/p2/s$a;->a:Le/a/l/p2/s;

    .line 2
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, v0, Le/a/l/p2/s;->j:Ls1/w/f;

    new-instance v4, Le/a/l/p2/r;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v3}, Le/a/l/p2/r;-><init>(Le/a/l/p2/s;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
