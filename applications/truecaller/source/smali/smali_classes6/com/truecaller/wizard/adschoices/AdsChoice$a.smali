.class public final Lcom/truecaller/wizard/adschoices/AdsChoice$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/adschoices/AdsChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/b/l/a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/truecaller/wizard/adschoices/AdsChoice$a;

.field public static final d:Lcom/truecaller/wizard/adschoices/AdsChoice$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/wizard/adschoices/AdsChoice$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;->c:Lcom/truecaller/wizard/adschoices/AdsChoice$a;

    new-instance v0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/truecaller/wizard/adschoices/AdsChoice$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;->d:Lcom/truecaller/wizard/adschoices/AdsChoice$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/truecaller/wizard/adschoices/AdsChoice$a;->b:I

    const-string v1, "$receiver"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :cond_0
    check-cast p1, Le/a/b0/b/l/a;

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Opt-it not supprted for restricted ads"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    check-cast p1, Le/a/b0/b/l/a;

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Opt-out not supprted for restricted ads"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
