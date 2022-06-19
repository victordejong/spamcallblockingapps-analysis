.class public final Le/a/t1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$h$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/d0/g0;

.field public final b:Le/a/t1;

.field public final c:Le/a/t1$h;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/d0/j0;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/w0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/d0/c0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/d0/g0;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$h;->c:Le/a/t1$h;

    .line 3
    iput-object p1, p0, Le/a/t1$h;->b:Le/a/t1;

    .line 4
    iput-object p2, p0, Le/a/t1$h;->a:Le/a/d0/g0;

    .line 5
    new-instance p2, Le/a/t1$h$a;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, Le/a/t1$h$a;-><init>(Le/a/t1;Le/a/t1$h;I)V

    .line 6
    sget-object p3, Lo3/c/b;->c:Ljava/lang/Object;

    .line 7
    instance-of p3, p2, Lo3/c/b;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lo3/c/b;

    invoke-direct {p3, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, p3

    .line 9
    :goto_0
    iput-object p2, p0, Le/a/t1$h;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p2, Le/a/t1$h$a;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p0, p3}, Le/a/t1$h$a;-><init>(Le/a/t1;Le/a/t1$h;I)V

    .line 11
    instance-of p3, p2, Lo3/c/b;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p3, Lo3/c/b;

    invoke-direct {p3, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, p3

    .line 13
    :goto_1
    iput-object p2, p0, Le/a/t1$h;->e:Ljavax/inject/Provider;

    .line 14
    new-instance p2, Le/a/t1$h$a;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Le/a/t1$h$a;-><init>(Le/a/t1;Le/a/t1$h;I)V

    .line 15
    instance-of p1, p2, Lo3/c/b;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Lo3/c/b;

    invoke-direct {p1, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, p1

    .line 17
    :goto_2
    iput-object p2, p0, Le/a/t1$h;->f:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a()Le/a/r2/j;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/t1$h;->a:Le/a/d0/g0;

    iget-object v1, p0, Le/a/t1$h;->b:Le/a/t1;

    .line 2
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const-string v0, "CallerId"

    .line 6
    invoke-interface {v1, v0, v2, v3}, Le/a/r2/l;->f(Ljava/lang/String;J)Le/a/r2/j;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
