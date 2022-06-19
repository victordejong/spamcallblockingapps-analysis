.class public final Le/a/c0/o;
.super Le/a/c0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c0/f<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Le/a/c0/g;


# direct methods
.method public constructor <init>(Le/a/c0/g;Le/a/s4/a;Le/a/q2/d1/d;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Le/a/c0/f;-><init>(Le/a/c0/g;Le/a/s4/a;Le/a/q2/d1/d;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c0/o;->d:Le/a/c0/g;

    return-void
.end method


# virtual methods
.method public a()Le/a/c0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c0/o;->d:Le/a/c0/g;

    return-object v0
.end method
