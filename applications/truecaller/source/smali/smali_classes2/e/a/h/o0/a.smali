.class public final Le/a/h/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/a;


# instance fields
.field public final a:Le/a/i/v/a;


# direct methods
.method public constructor <init>(Le/a/i/v/a;)V
    .locals 1

    const-string v0, "acsAdsCacheManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/o0/a;->a:Le/a/i/v/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/o0/a;->a:Le/a/i/v/a;

    const-string v1, "incomingCallNotification"

    invoke-interface {v0, v1}, Le/a/i/v/a;->a(Ljava/lang/String;)V

    return-void
.end method
