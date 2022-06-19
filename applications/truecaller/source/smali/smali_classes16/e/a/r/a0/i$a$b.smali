.class public final Le/a/r/a0/i$a$b;
.super Le/a/r/a0/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/a0/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/r/a0/i$a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/r/a0/i$a$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    iput-object p2, p0, Le/a/r/a0/i$a$b;->b:Ljava/lang/String;

    return-void
.end method
