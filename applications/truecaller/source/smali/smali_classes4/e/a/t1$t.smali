.class public final Le/a/t1$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$t$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$t;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/c/s;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/c/n;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$t;->b:Le/a/t1$t;

    .line 3
    iput-object p1, p0, Le/a/t1$t;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$t$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$t$a;-><init>(Le/a/t1;Le/a/t1$t;I)V

    iput-object p2, p0, Le/a/t1$t;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$t;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p2, Le/a/t1$t$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$t$a;-><init>(Le/a/t1;Le/a/t1$t;I)V

    iput-object p2, p0, Le/a/t1$t;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$t;->f:Ljavax/inject/Provider;

    return-void
.end method
