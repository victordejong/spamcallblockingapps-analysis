.class public Le/a/q2/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/q2/d0;Le/a/q2/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/a/q2/d0$c;->a:Z

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Le/a/q2/d0$c;->b:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/a/q2/d0$c;->c:Ljava/lang/Integer;

    return-void
.end method
