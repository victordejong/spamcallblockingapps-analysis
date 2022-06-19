.class public final Le/a/v4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v4/x$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/v4/x;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/android/sdk/PartnerInformation;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/android/sdk/PartnerInformation;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/android/sdk/TrueResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v4/x;->a:Le/a/r2/w;

    new-instance v1, Le/a/v4/x$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/v4/x$b;-><init>(Le/a/r2/e;Lcom/truecaller/android/sdk/PartnerInformation;Le/a/v4/x$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
