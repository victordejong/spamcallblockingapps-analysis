.class public final Le/a/m4/c/i/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;


# direct methods
.method public constructor <init>(ILcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/m4/c/i/a/g;->b:I

    iput-object p2, p0, Le/a/m4/c/i/a/g;->c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    const/16 p2, 0xc8

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12b

    if-lt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    :goto_1
    iput-boolean p1, p0, Le/a/m4/c/i/a/g;->a:Z

    return-void
.end method
