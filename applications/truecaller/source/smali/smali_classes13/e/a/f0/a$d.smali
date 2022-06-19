.class public final Le/a/f0/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f0/a;-><init>(Le/a/f0/g/a;Le/a/q2/a;Lo3/a;Lo3/a;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/f0/a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/f0/a$d;

    invoke-direct {v0}, Le/a/f0/a$d;-><init>()V

    sput-object v0, Le/a/f0/a$d;->b:Le/a/f0/a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Le/a/l4/k;->v()Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;->getConfig()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksForRegion;

    return-object v0
.end method
