.class public final Le/a/i/u/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/u/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/u/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/u/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/u/c$a;

    invoke-direct {v0}, Le/a/i/u/c$a;-><init>()V

    sput-object v0, Le/a/i/u/c$a;->b:Le/a/i/u/c$a;

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
    .locals 6

    .line 1
    const-class v0, Le/a/i/u/a;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->ADS_LOGGER:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->t1(Le/a/b0/b/a/b;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Le/a/b0/b/g/b;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 4
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 6
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/u/a;

    return-object v0
.end method
