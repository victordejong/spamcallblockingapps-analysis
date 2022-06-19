.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final f:[I

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final h:[I

.field final i:[I

.field final j:I

.field final k:Ljava/lang/String;

.field final l:I

.field final m:I

.field final n:Ljava/lang/CharSequence;

.field final o:I

.field final p:Ljava/lang/CharSequence;

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/b$a;

    invoke-direct {v0}, Landroidx/fragment/app/b$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->f:[I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->h:[I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->i:[I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->j:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->l:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->m:I

    .line 37
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->o:I

    .line 39
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->r:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/b;->s:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 3
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->f:[I

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/y;->g:Z

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->g:Ljava/util/ArrayList;

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->h:[I

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->i:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v3, p1, Landroidx/fragment/app/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/y$a;

    .line 9
    iget-object v4, p0, Landroidx/fragment/app/b;->f:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/y$a;->a:I

    aput v6, v4, v2

    .line 10
    iget-object v2, p0, Landroidx/fragment/app/b;->g:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Landroidx/fragment/app/b;->f:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/y$a;->c:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 12
    iget v6, v3, Landroidx/fragment/app/y$a;->d:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 13
    iget v6, v3, Landroidx/fragment/app/y$a;->e:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 14
    iget v6, v3, Landroidx/fragment/app/y$a;->f:I

    aput v6, v2, v4

    .line 15
    iget-object v2, p0, Landroidx/fragment/app/b;->h:[I

    iget-object v4, v3, Landroidx/fragment/app/y$a;->g:Landroidx/lifecycle/h$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v2, v1

    .line 16
    iget-object v2, p0, Landroidx/fragment/app/b;->i:[I

    iget-object v3, v3, Landroidx/fragment/app/y$a;->h:Landroidx/lifecycle/h$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 17
    :cond_1
    iget v0, p1, Landroidx/fragment/app/y;->f:I

    iput v0, p0, Landroidx/fragment/app/b;->j:I

    .line 18
    iget-object v0, p1, Landroidx/fragment/app/y;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/String;

    .line 19
    iget v0, p1, Landroidx/fragment/app/a;->t:I

    iput v0, p0, Landroidx/fragment/app/b;->l:I

    .line 20
    iget v0, p1, Landroidx/fragment/app/y;->j:I

    iput v0, p0, Landroidx/fragment/app/b;->m:I

    .line 21
    iget-object v0, p1, Landroidx/fragment/app/y;->k:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/lang/CharSequence;

    .line 22
    iget v0, p1, Landroidx/fragment/app/y;->l:I

    iput v0, p0, Landroidx/fragment/app/b;->o:I

    .line 23
    iget-object v0, p1, Landroidx/fragment/app/y;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    .line 24
    iget-object v0, p1, Landroidx/fragment/app/y;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p1, Landroidx/fragment/app/y;->o:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->r:Ljava/util/ArrayList;

    .line 26
    iget-boolean p1, p1, Landroidx/fragment/app/y;->p:Z

    iput-boolean p1, p0, Landroidx/fragment/app/b;->s:Z

    return-void

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroidx/fragment/app/n;)Landroidx/fragment/app/a;
    .locals 9

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/n;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/b;->f:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 3
    new-instance v4, Landroidx/fragment/app/y$a;

    invoke-direct {v4}, Landroidx/fragment/app/y$a;-><init>()V

    add-int/lit8 v5, v1, 0x1

    .line 4
    aget v1, v3, v1

    iput v1, v4, Landroidx/fragment/app/y$a;->a:I

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Landroidx/fragment/app/n;->H0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " op #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " base fragment #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/b;->f:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Landroidx/fragment/app/n;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 9
    iput-object v1, v4, Landroidx/fragment/app/y$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    iput-object v1, v4, Landroidx/fragment/app/y$a;->b:Landroidx/fragment/app/Fragment;

    .line 11
    :goto_1
    invoke-static {}, Landroidx/lifecycle/h$c;->values()[Landroidx/lifecycle/h$c;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/b;->h:[I

    aget v3, v3, v2

    aget-object v1, v1, v3

    iput-object v1, v4, Landroidx/fragment/app/y$a;->g:Landroidx/lifecycle/h$c;

    .line 12
    invoke-static {}, Landroidx/lifecycle/h$c;->values()[Landroidx/lifecycle/h$c;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/b;->i:[I

    aget v3, v3, v2

    aget-object v1, v1, v3

    iput-object v1, v4, Landroidx/fragment/app/y$a;->h:Landroidx/lifecycle/h$c;

    .line 13
    iget-object v1, p0, Landroidx/fragment/app/b;->f:[I

    add-int/lit8 v3, v5, 0x1

    aget v5, v1, v5

    iput v5, v4, Landroidx/fragment/app/y$a;->c:I

    add-int/lit8 v6, v3, 0x1

    .line 14
    aget v3, v1, v3

    iput v3, v4, Landroidx/fragment/app/y$a;->d:I

    add-int/lit8 v7, v6, 0x1

    .line 15
    aget v6, v1, v6

    iput v6, v4, Landroidx/fragment/app/y$a;->e:I

    add-int/lit8 v8, v7, 0x1

    .line 16
    aget v1, v1, v7

    iput v1, v4, Landroidx/fragment/app/y$a;->f:I

    .line 17
    iput v5, v0, Landroidx/fragment/app/y;->b:I

    .line 18
    iput v3, v0, Landroidx/fragment/app/y;->c:I

    .line 19
    iput v6, v0, Landroidx/fragment/app/y;->d:I

    .line 20
    iput v1, v0, Landroidx/fragment/app/y;->e:I

    .line 21
    invoke-virtual {v0, v4}, Landroidx/fragment/app/y;->f(Landroidx/fragment/app/y$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto/16 :goto_0

    .line 22
    :cond_2
    iget p1, p0, Landroidx/fragment/app/b;->j:I

    iput p1, v0, Landroidx/fragment/app/y;->f:I

    .line 23
    iget-object p1, p0, Landroidx/fragment/app/b;->k:Ljava/lang/String;

    iput-object p1, v0, Landroidx/fragment/app/y;->i:Ljava/lang/String;

    .line 24
    iget p1, p0, Landroidx/fragment/app/b;->l:I

    iput p1, v0, Landroidx/fragment/app/a;->t:I

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, v0, Landroidx/fragment/app/y;->g:Z

    .line 26
    iget v1, p0, Landroidx/fragment/app/b;->m:I

    iput v1, v0, Landroidx/fragment/app/y;->j:I

    .line 27
    iget-object v1, p0, Landroidx/fragment/app/b;->n:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/y;->k:Ljava/lang/CharSequence;

    .line 28
    iget v1, p0, Landroidx/fragment/app/b;->o:I

    iput v1, v0, Landroidx/fragment/app/y;->l:I

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/y;->m:Ljava/lang/CharSequence;

    .line 30
    iget-object v1, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/y;->n:Ljava/util/ArrayList;

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/b;->r:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/y;->o:Ljava/util/ArrayList;

    .line 32
    iget-boolean v1, p0, Landroidx/fragment/app/b;->s:Z

    iput-boolean v1, v0, Landroidx/fragment/app/y;->p:Z

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->x(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/fragment/app/b;->f:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2
    iget-object p2, p0, Landroidx/fragment/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/b;->h:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    iget-object p2, p0, Landroidx/fragment/app/b;->i:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget p2, p0, Landroidx/fragment/app/b;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Landroidx/fragment/app/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Landroidx/fragment/app/b;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroidx/fragment/app/b;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Landroidx/fragment/app/b;->n:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 10
    iget p2, p0, Landroidx/fragment/app/b;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 12
    iget-object p2, p0, Landroidx/fragment/app/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 13
    iget-object p2, p0, Landroidx/fragment/app/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 14
    iget-boolean p2, p0, Landroidx/fragment/app/b;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
