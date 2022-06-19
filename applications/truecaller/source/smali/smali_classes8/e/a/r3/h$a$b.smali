.class public final Le/a/r3/h$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r3/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Lq3/a/w2/x;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/h$a$b;->a:Lq3/a/w2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r3/h$a$b;->a:Lq3/a/w2/x;

    new-instance v1, Le/a/r3/b$b;

    const-string v2, "e"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, -0x64

    invoke-direct {v1, p1, v2}, Le/a/r3/b$b;-><init>(Ljava/lang/Exception;I)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->j3(Lq3/a/w2/d0;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r3/h$a$b;->a:Lq3/a/w2/x;

    invoke-interface {p1}, Lq3/a/w2/x;->Z1()Lq3/a/w2/d0;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method
