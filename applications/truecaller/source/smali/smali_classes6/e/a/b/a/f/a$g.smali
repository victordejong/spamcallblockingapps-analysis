.class public final Le/a/b/a/f/a$g;
.super Le/a/b/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;


# direct methods
.method public constructor <init>(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V
    .locals 2

    const-string v0, "businessProfile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b/a/f/a;-><init>(ILs1/z/c/f;)V

    iput-object p1, p0, Le/a/b/a/f/a$g;->c:Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    return-void
.end method
