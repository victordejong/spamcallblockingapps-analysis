.class public final Le/a/a/g/a$a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/g/a$a$a;

.field public static final c:Le/a/a/g/a$a$a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/a/g/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/g/a$a$a;-><init>(I)V

    sput-object v0, Le/a/a/g/a$a$a;->b:Le/a/a/g/a$a$a;

    new-instance v0, Le/a/a/g/a$a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/a/g/a$a$a;-><init>(I)V

    sput-object v0, Le/a/a/g/a$a$a;->c:Le/a/a/g/a$a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/a/g/a$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Le/a/a/g/a$a$a;->a:I

    const-string v1, "right.normalizedAddress"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    check-cast p2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    check-cast p2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
