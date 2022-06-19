.class public final Le/a/q2/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/analytics/TimingEvent;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/u$a;->a:Lcom/truecaller/analytics/TimingEvent;

    iput-object p2, p0, Le/a/q2/u$a;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/q2/u$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Le/a/q2/u$a;->d:J

    return-void
.end method
