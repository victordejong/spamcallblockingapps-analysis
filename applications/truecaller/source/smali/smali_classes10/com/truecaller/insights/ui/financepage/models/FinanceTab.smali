.class public final enum Lcom/truecaller/insights/ui/financepage/models/FinanceTab;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/s/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;",
        ">;",
        "Le/a/c/a/s/d$c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0005R\u0019\u0010\u0007\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0005j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;",
        "",
        "Le/a/c/a/s/d$c;",
        "",
        "title",
        "()Ljava/lang/String;",
        "tag",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "ALL",
        "CREDIT",
        "DEBIT",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

.field public static final enum ALL:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

.field public static final enum CREDIT:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

.field public static final enum DEBIT:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    new-instance v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    const-string v2, "ALL"

    const/4 v3, 0x0

    const-string v4, "All"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->ALL:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    const-string v2, "CREDIT"

    const/4 v3, 0x1

    const-string v4, "Credit"

    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->CREDIT:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    const-string v2, "DEBIT"

    const/4 v3, 0x2

    const-string v4, "Debit"

    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->DEBIT:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->$VALUES:[Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/ui/financepage/models/FinanceTab;
    .locals 1

    const-class v0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/ui/financepage/models/FinanceTab;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->$VALUES:[Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    invoke-virtual {v0}, [Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->value:Ljava/lang/String;

    return-object v0
.end method

.method public tag()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->value:Ljava/lang/String;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/models/FinanceTab;->value:Ljava/lang/String;

    invoke-static {v0}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
