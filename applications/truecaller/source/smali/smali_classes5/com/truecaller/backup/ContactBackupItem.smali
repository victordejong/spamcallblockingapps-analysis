.class public final Lcom/truecaller/backup/ContactBackupItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/truecaller/backup/ContactBackupItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001BQ\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008*\u0010+J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0008Jf\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u0010\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\nJ\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010!\u001a\u0004\u0008\"\u0010\u0008R!\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010#\u001a\u0004\u0008$\u0010\rR!\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010#\u001a\u0004\u0008%\u0010\rR\u0019\u0010\u0013\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010!\u001a\u0004\u0008&\u0010\u0008R!\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010#\u001a\u0004\u0008\'\u0010\rR\u0019\u0010\u0014\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010(\u001a\u0004\u0008)\u0010\n\u00a8\u0006,"
    }
    d2 = {
        "Lcom/truecaller/backup/ContactBackupItem;",
        "",
        "other",
        "",
        "compareTo",
        "(Lcom/truecaller/backup/ContactBackupItem;)I",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "()I",
        "",
        "component3",
        "()Ljava/util/Set;",
        "Lcom/truecaller/data/entity/Link;",
        "component4",
        "Lcom/truecaller/data/entity/Address;",
        "component5",
        "component6",
        "name",
        "source",
        "numbers",
        "emails",
        "addresses",
        "avatarUrl",
        "copy",
        "(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/truecaller/backup/ContactBackupItem;",
        "toString",
        "hashCode",
        "",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getAvatarUrl",
        "Ljava/util/Set;",
        "getAddresses",
        "getEmails",
        "getName",
        "getNumbers",
        "I",
        "getSource",
        "<init>",
        "(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final avatarUrl:Ljava/lang/String;

.field private final emails:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final numbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/data/entity/Link;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/data/entity/Address;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    iput p2, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    iput-object p3, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    iput-object p4, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    iput-object p5, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    iput-object p6, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/backup/ContactBackupItem;Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/backup/ContactBackupItem;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/truecaller/backup/ContactBackupItem;->copy(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/truecaller/backup/ContactBackupItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/truecaller/backup/ContactBackupItem;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/backup/ContactBackupItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/backup/ContactBackupItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/backup/ContactBackupItem;

    invoke-virtual {p0, p1}, Lcom/truecaller/backup/ContactBackupItem;->compareTo(Lcom/truecaller/backup/ContactBackupItem;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    return v0
.end method

.method public final component3()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    return-object v0
.end method

.method public final component4()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    return-object v0
.end method

.method public final component5()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/truecaller/backup/ContactBackupItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/data/entity/Link;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/data/entity/Address;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truecaller/backup/ContactBackupItem;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/backup/ContactBackupItem;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/backup/ContactBackupItem;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/backup/ContactBackupItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/backup/ContactBackupItem;

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    iget v1, p1, Lcom/truecaller/backup/ContactBackupItem;->source:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    iget-object v1, p1, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    iget-object v1, p1, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    iget-object v1, p1, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddresses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmails()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumbers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    return-object v0
.end method

.method public final getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ContactBackupItem(name="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/backup/ContactBackupItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/backup/ContactBackupItem;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/ContactBackupItem;->numbers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/ContactBackupItem;->emails:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/ContactBackupItem;->addresses:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/ContactBackupItem;->avatarUrl:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
