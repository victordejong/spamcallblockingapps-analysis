.class public final Le/a/d/y/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/y/b/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/y/b/g;


# direct methods
.method public constructor <init>(Le/a/d/y/b/g;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/g$a;->a:Le/a/d/y/b/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/y/b/g$a;->a:Le/a/d/y/b/g;

    iget-object v1, v0, Le/a/d/y/b/g;->f:Le/a/d/y/b/h;

    .line 3
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/y/b/c;

    if-eqz v1, :cond_0

    .line 4
    iget-wide v2, v0, Le/a/d/y/b/g;->h:J

    invoke-interface {v1, p1, v2, v3}, Le/a/d/y/b/c;->I(Ljava/lang/String;J)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method
