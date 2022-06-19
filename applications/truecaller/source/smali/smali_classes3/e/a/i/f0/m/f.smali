.class public final Le/a/i/f0/m/f;
.super Le/a/i/f0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/f0/m/b<",
        "Le/a/i/f0/n/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/truecaller/ads/provider/holders/AdHolderType;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:J


# direct methods
.method public constructor <init>(Le/a/i/f0/n/d;Le/a/i/f0/l/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/i/f0/m/b;-><init>(Ljava/lang/Object;Le/a/i/f0/l/c;)V

    .line 2
    sget-object p1, Lcom/truecaller/ads/provider/holders/AdHolderType;->HOUSE_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    iput-object p1, p0, Le/a/i/f0/m/f;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    const-string p1, "house"

    .line 3
    iput-object p1, p0, Le/a/i/f0/m/f;->e:Ljava/lang/String;

    const-string p1, "normal"

    .line 4
    iput-object p1, p0, Le/a/i/f0/m/f;->f:Ljava/lang/String;

    .line 5
    sget-wide p1, Le/a/i/f0/m/g;->a:J

    .line 6
    iput-wide p1, p0, Le/a/i/f0/m/f;->g:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/i/f0/m/f;->g:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getType()Lcom/truecaller/ads/provider/holders/AdHolderType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/f;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    return-object v0
.end method
