.class public final Le/a/t1$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$l$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$l;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e/b/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e/b/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e/b/b/i;",
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
    iput-object p0, p0, Le/a/t1$l;->b:Le/a/t1$l;

    .line 3
    iput-object p1, p0, Le/a/t1$l;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$l$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$l$a;-><init>(Le/a/t1;Le/a/t1$l;I)V

    iput-object p2, p0, Le/a/t1$l;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$l;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p2, Le/a/t1$l$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$l$a;-><init>(Le/a/t1;Le/a/t1$l;I)V

    iput-object p2, p0, Le/a/t1$l;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$l;->f:Ljavax/inject/Provider;

    return-void
.end method
