.class public final Le/a/d/v/k/a1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/a1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/x1/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/a1$a;


# direct methods
.method public constructor <init>(Le/a/d/v/k/a1$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/a1$a$a;->a:Le/a/d/v/k/a1$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/a/d/c0/x1/a;

    .line 2
    instance-of p1, p1, Le/a/d/c0/x1/a$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/d/v/k/a1$a$a;->a:Le/a/d/v/k/a1$a;

    iget-object p1, p1, Le/a/d/v/k/a1$a;->f:Le/a/d/v/k/a1;

    .line 3
    iget-object p1, p1, Le/a/d/v/k/a1;->a:Le/a/d/c0/v;

    .line 4
    invoke-interface {p1}, Le/a/d/c0/v;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/v/k/a1$a$a;->a:Le/a/d/v/k/a1$a;

    iget-object p1, p1, Le/a/d/v/k/a1$a;->f:Le/a/d/v/k/a1;

    .line 6
    iget-object p1, p1, Le/a/d/v/k/a1;->a:Le/a/d/c0/v;

    .line 7
    invoke-interface {p1}, Le/a/d/c0/v;->a()V

    .line 8
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
