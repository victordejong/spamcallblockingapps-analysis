.class public final Le/a/b/o/b/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/b/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/o/b/c$a;

.field public final synthetic b:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/b/o/b/c$a;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/b/c$a$a;->a:Le/a/b/o/b/c$a;

    iput-object p2, p0, Le/a/b/o/b/c$a$a;->b:Lq3/a/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/b/o/b/c$a$a;->b:Lq3/a/i0;

    new-instance v3, Le/a/b/o/b/c$a$a$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/b/o/b/c$a$a$a;-><init>(Le/a/b/o/b/c$a$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
