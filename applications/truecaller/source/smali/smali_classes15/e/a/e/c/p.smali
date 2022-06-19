.class public final synthetic Le/a/e/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/a/e/c/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e/c/p;

    invoke-direct {v0}, Le/a/e/c/p;-><init>()V

    sput-object v0, Le/a/e/c/p;->a:Le/a/e/c/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/truecaller/profile/data/dto/OpenHours;

    check-cast p2, Lcom/truecaller/profile/data/dto/OpenHours;

    .line 1
    sget-object v0, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/truecaller/profile/data/dto/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
