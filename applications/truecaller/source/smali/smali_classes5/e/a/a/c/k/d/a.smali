.class public final Le/a/a/c/k/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/l0/a;


# instance fields
.field public final a:J

.field public final b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;


# direct methods
.method public constructor <init>(JLcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V
    .locals 1

    const-string v0, "loadHistoryType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/a/c/k/d/a;->a:J

    iput-object p3, p0, Le/a/a/c/k/d/a;->b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/a/c/k/d/a;->a:J

    return-wide v0
.end method
