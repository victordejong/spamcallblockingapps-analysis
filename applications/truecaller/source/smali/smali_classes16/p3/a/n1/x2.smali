.class public final Lp3/a/n1/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/x2$b;
    }
.end annotation


# static fields
.field public static final h:Lp3/a/n1/x2$b;


# instance fields
.field public final a:Lp3/a/n1/u2;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public final g:Lp3/a/n1/l1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/x2$b;

    sget-object v1, Lp3/a/n1/u2;->a:Lp3/a/n1/u2;

    invoke-direct {v0, v1}, Lp3/a/n1/x2$b;-><init>(Lp3/a/n1/u2;)V

    sput-object v0, Lp3/a/n1/x2;->h:Lp3/a/n1/x2$b;

    return-void
.end method

.method public constructor <init>(Lp3/a/n1/u2;Lp3/a/n1/x2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/q/f/a/d/a;->X()Lp3/a/n1/l1;

    move-result-object p2

    iput-object p2, p0, Lp3/a/n1/x2;->g:Lp3/a/n1/l1;

    .line 3
    iput-object p1, p0, Lp3/a/n1/x2;->a:Lp3/a/n1/u2;

    return-void
.end method
