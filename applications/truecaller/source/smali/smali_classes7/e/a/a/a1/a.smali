.class public final Le/a/a/a1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a1/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/a1/f;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/a1/a;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/a1/f;Le/a/j2;Le/a/a/a1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/a1/a;->c:Le/a/a/a1/a;

    .line 3
    iput-object p1, p0, Le/a/a/a1/a;->a:Le/a/a/a1/f;

    .line 4
    iput-object p2, p0, Le/a/a/a1/a;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/a1/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/a1/a$b;-><init>(Le/a/a/a1/a;I)V

    iput-object p1, p0, Le/a/a/a1/a;->d:Ljavax/inject/Provider;

    return-void
.end method
