.class public final Le/a/m4/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/profile/data/dto/ProfileResponse;


# direct methods
.method public constructor <init>(ILcom/truecaller/profile/data/dto/ProfileResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/m4/c/h;->a:I

    iput-object p2, p0, Le/a/m4/c/h;->b:Lcom/truecaller/profile/data/dto/ProfileResponse;

    const/16 p2, 0xc8

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12b

    :goto_0
    return-void
.end method
