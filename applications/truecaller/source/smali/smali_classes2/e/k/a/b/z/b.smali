.class public Le/k/a/b/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/b/z/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Le/k/a/b/z/b$a;

.field public f:Le/k/a/b/m;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/k/a/b/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/b/z/b;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/k/a/b/z/b;->f:Le/k/a/b/m;

    return-void
.end method
