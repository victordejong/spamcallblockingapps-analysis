.class public final Lcom/truecaller/blocking/FilterMatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/truecaller/blocking/FilterMatch;

.field public static final k:Lcom/truecaller/blocking/FilterMatch;

.field public static final l:Lcom/truecaller/blocking/FilterMatch;

.field public static final m:Lcom/truecaller/blocking/FilterMatch;

.field public static final n:Lcom/truecaller/blocking/FilterMatch;

.field public static final o:Lcom/truecaller/blocking/FilterMatch;

.field public static final p:Lcom/truecaller/blocking/FilterMatch;


# instance fields
.field public final a:J

.field public final b:Lcom/truecaller/blocking/FilterAction;

.field public final c:Lcom/truecaller/blocking/ActionSource;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v12, Lcom/truecaller/blocking/FilterMatch;

    .line 2
    sget-object v3, Lcom/truecaller/blocking/FilterAction;->NONE_FOUND:Lcom/truecaller/blocking/FilterAction;

    .line 3
    sget-object v4, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f9

    move-object v0, v12

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v12, Lcom/truecaller/blocking/FilterMatch;->j:Lcom/truecaller/blocking/FilterMatch;

    .line 5
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 6
    sget-object v25, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    .line 7
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->UNKNOWN:Lcom/truecaller/blocking/ActionSource;

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1f9

    move-object v13, v0

    move-object/from16 v16, v25

    move-object/from16 v17, v5

    .line 8
    invoke-direct/range {v13 .. v24}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->k:Lcom/truecaller/blocking/FilterMatch;

    .line 9
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 10
    sget-object v4, Lcom/truecaller/blocking/FilterAction;->FILTER_DISABLED:Lcom/truecaller/blocking/FilterAction;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f9

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->l:Lcom/truecaller/blocking/FilterMatch;

    .line 12
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 13
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->NON_PHONEBOOK:Lcom/truecaller/blocking/ActionSource;

    move-object v1, v0

    move-object/from16 v4, v25

    .line 14
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->m:Lcom/truecaller/blocking/FilterMatch;

    .line 15
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 16
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->FOREIGN:Lcom/truecaller/blocking/ActionSource;

    move-object v1, v0

    .line 17
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->n:Lcom/truecaller/blocking/FilterMatch;

    .line 18
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 19
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->NEIGHBOUR_SPOOFING:Lcom/truecaller/blocking/ActionSource;

    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->o:Lcom/truecaller/blocking/FilterMatch;

    .line 21
    new-instance v0, Lcom/truecaller/blocking/FilterMatch;

    .line 22
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->INDIAN_REGISTERED_TELEMARKETER:Lcom/truecaller/blocking/ActionSource;

    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v12}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->p:Lcom/truecaller/blocking/FilterMatch;

    .line 24
    new-instance v0, Lcom/truecaller/blocking/FilterMatch$a;

    invoke-direct {v0}, Lcom/truecaller/blocking/FilterMatch$a;-><init>()V

    sput-object v0, Lcom/truecaller/blocking/FilterMatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/blocking/FilterAction;",
            "Lcom/truecaller/blocking/ActionSource;",
            "Ljava/lang/String;",
            "II",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSource"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wildCardType"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/blocking/FilterMatch;->a:J

    iput-object p3, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    iput-object p4, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    iput-object p5, p0, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    iput p6, p0, Lcom/truecaller/blocking/FilterMatch;->e:I

    iput p7, p0, Lcom/truecaller/blocking/FilterMatch;->f:I

    iput-object p8, p0, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iput-object p9, p0, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    iput-object p10, p0, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;I)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v8, 0x0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 2
    sget-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    move-object v11, v1

    and-int/lit16 v1, v0, 0x80

    const/4 v12, 0x0

    and-int/lit16 v0, v0, 0x100

    const/4 v13, 0x0

    move-object v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 3
    invoke-direct/range {v3 .. v13}, Lcom/truecaller/blocking/FilterMatch;-><init>(JLcom/truecaller/blocking/FilterAction;Lcom/truecaller/blocking/ActionSource;Ljava/lang/String;IILcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    sget-object v1, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    sget-object v1, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    sget-object v1, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/blocking/FilterMatch;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    iget-wide v0, p0, Lcom/truecaller/blocking/FilterMatch;->a:J

    iget-wide v2, p1, Lcom/truecaller/blocking/FilterMatch;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/blocking/FilterMatch;->e:I

    iget v1, p1, Lcom/truecaller/blocking/FilterMatch;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/blocking/FilterMatch;->f:I

    iget v1, p1, Lcom/truecaller/blocking/FilterMatch;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/truecaller/blocking/FilterMatch;->a:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/blocking/FilterMatch;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/blocking/FilterMatch;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FilterMatch(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/blocking/FilterMatch;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/blocking/FilterMatch;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/blocking/FilterMatch;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wildCardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamCategoryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcom/truecaller/blocking/FilterMatch;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/truecaller/blocking/FilterMatch;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/truecaller/blocking/FilterMatch;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 9
    iget-object p2, p0, Lcom/truecaller/blocking/FilterMatch;->i:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
