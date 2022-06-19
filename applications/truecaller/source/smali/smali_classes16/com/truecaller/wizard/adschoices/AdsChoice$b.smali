.class public final synthetic Lcom/truecaller/wizard/adschoices/AdsChoice$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/adschoices/AdsChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/b0/b/l/a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Lcom/truecaller/wizard/adschoices/AdsChoice$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/wizard/adschoices/AdsChoice$b;

    invoke-direct {v0}, Lcom/truecaller/wizard/adschoices/AdsChoice$b;-><init>()V

    sput-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice$b;->j:Lcom/truecaller/wizard/adschoices/AdsChoice$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Le/a/b0/b/l/a;

    const/4 v1, 0x1

    const-string v3, "optOutPersonalizedAds"

    const-string v4, "optOutPersonalizedAds()Z"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/b/l/a;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/b0/b/l/a;->e()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
