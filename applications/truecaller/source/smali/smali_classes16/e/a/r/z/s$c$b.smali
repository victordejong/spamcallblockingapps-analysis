.class public final Le/a/r/z/s$c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/s$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Le/a/r/r/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/s$c;


# direct methods
.method public constructor <init>(Le/a/r/z/s$c;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/s$c$b;->b:Le/a/r/z/s$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    const-string p1, "VerifyOnboardingOTP"

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/r/z/s$c$b;->b:Le/a/r/z/s$c;

    iget-object v2, v1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    .line 3
    iget-object v2, v2, Le/a/r/z/s;->J:Le/a/r/z/z;

    .line 4
    iget-object v1, v1, Le/a/r/z/s$c;->i:Lcom/truecaller/account/network/VerifyTokenRequestDto;

    invoke-interface {v2, v1}, Le/a/r/z/z;->a(Lcom/truecaller/account/network/VerifyTokenRequestDto;)Le/a/r/r/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v1, p0, Le/a/r/z/s$c$b;->b:Le/a/r/z/s$c;

    iget-object v1, v1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    .line 6
    iget-object v1, v1, Le/a/r/z/s;->S:Le/a/r/q/c;

    const-string v2, "RuntimeException"

    .line 7
    invoke-interface {v1, p1, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_1
    iget-object v1, p0, Le/a/r/z/s$c$b;->b:Le/a/r/z/s$c;

    iget-object v1, v1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    .line 9
    iget-object v1, v1, Le/a/r/z/s;->S:Le/a/r/q/c;

    const-string v2, "IOException"

    .line 10
    invoke-interface {v1, p1, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
