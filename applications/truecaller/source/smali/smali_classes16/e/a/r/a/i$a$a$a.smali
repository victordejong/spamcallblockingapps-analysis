.class public final Le/a/r/a/i$a$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/i$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/r/a/i$a$a;


# direct methods
.method public constructor <init>(Le/a/r/a/i$a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/i$a$a$a;->b:Le/a/r/a/i$a$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/r/a/i$a$a$a;->b:Le/a/r/a/i$a$a;

    iget-object v0, v0, Le/a/r/a/i$a$a;->f:Le/a/r/a/i$a;

    iget-object v1, v0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 3
    iget-object v1, v1, Le/a/r/a/i;->o:Le/a/r/a/b;

    .line 4
    iget-object v0, v0, Le/a/r/a/i$a;->g:Lcom/truecaller/account/network/CompleteOnboardingDto;

    invoke-virtual {v1, v0}, Le/a/r/a/b;->a(Lcom/truecaller/account/network/CompleteOnboardingDto;)Le/a/r/r/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method
