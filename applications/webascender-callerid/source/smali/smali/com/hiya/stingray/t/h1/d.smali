.class public final Lcom/hiya/stingray/t/h1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/h1/d$a;,
        Lcom/hiya/stingray/t/h1/d$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/hiya/stingray/t/h1/d$b;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/hiya/stingray/t/h1/d$a;

.field private final i:Lcom/hiya/stingray/t/h1/h;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:D

.field private final p:Lcom/hiya/stingray/t/n;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/hiya/stingray/t/h1/a;

.field private final t:Lcom/hiya/stingray/t/h1/f;

.field private final u:Lcom/hiya/stingray/t/h1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/t/h1/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/h1/d$b;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/h1/d;->CREATOR:Lcom/hiya/stingray/t/h1/d$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v2, "parcel.readString()!!"

    invoke-static {v3, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v5, Lcom/hiya/stingray/t/h1/d$a;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_c

    check-cast v5, Lcom/hiya/stingray/t/h1/d$a;

    .line 5
    const-class v6, Lcom/hiya/stingray/t/h1/h;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_b

    check-cast v6, Lcom/hiya/stingray/t/h1/h;

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v7, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-static {v8, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v10, "parcel.createStringArrayList()!!"

    invoke-static {v9, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-static {v11, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {v12, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 12
    const-class v10, Lcom/hiya/stingray/t/n;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v15, v10

    check-cast v15, Lcom/hiya/stingray/t/n;

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v10, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-class v2, Lcom/hiya/stingray/t/h1/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v17, v2

    check-cast v17, Lcom/hiya/stingray/t/h1/a;

    .line 16
    const-class v2, Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v18, v2

    check-cast v18, Lcom/hiya/stingray/t/h1/f;

    .line 17
    const-class v2, Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v19, v0

    check-cast v19, Lcom/hiya/stingray/t/h1/f;

    move-object/from16 v2, p0

    move-object v0, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v13

    move-object v14, v15

    move-object v15, v0

    move-object/from16 v16, v1

    .line 18
    invoke-direct/range {v2 .. v19}, Lcom/hiya/stingray/t/h1/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/d$a;Lcom/hiya/stingray/t/h1/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;DLcom/hiya/stingray/t/n;Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/a;Lcom/hiya/stingray/t/h1/f;Lcom/hiya/stingray/t/h1/f;)V

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 23
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 24
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 25
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 26
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_8
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 28
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_a
    const/4 v0, 0x0

    .line 29
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_b
    const/4 v0, 0x0

    .line 30
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_c
    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_d
    const/4 v0, 0x0

    .line 32
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_e
    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/d$a;Lcom/hiya/stingray/t/h1/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;DLcom/hiya/stingray/t/n;Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/h1/a;Lcom/hiya/stingray/t/h1/f;Lcom/hiya/stingray/t/h1/f;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/d$a;",
            "Lcom/hiya/stingray/t/h1/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D",
            "Lcom/hiya/stingray/t/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/a;",
            "Lcom/hiya/stingray/t/h1/f;",
            "Lcom/hiya/stingray/t/h1/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rating"

    invoke-static {v4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phones"

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayCategories"

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photoUrl"

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressComponent"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUrl"

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attribution"

    invoke-static {v13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reservation"

    invoke-static {v14, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delivery"

    invoke-static {v15, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    iput-object v4, v0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    iput-object v5, v0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    iput-object v6, v0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    iput-object v7, v0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    iput-object v8, v0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    iput-object v9, v0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/hiya/stingray/t/h1/d;->o:D

    iput-object v10, v0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    iput-object v11, v0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    iput-object v12, v0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    iput-object v13, v0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    iput-object v14, v0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    iput-object v15, v0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/stingray/t/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    return-object v0
.end method

.method public final b()Lcom/hiya/stingray/t/h1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    return-object v0
.end method

.method public final c()Lcom/hiya/stingray/t/h1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/t/h1/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/t/h1/d;

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/d;->o:D

    iget-wide v2, p1, Lcom/hiya/stingray/t/h1/d;->o:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    iget-object v1, p1, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    iget-object p1, p1, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final g()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/d;->o:D

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/hiya/stingray/t/h1/d;->o:D

    invoke-static {v2, v3}, Lc;->a(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/hiya/stingray/t/h1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    return-object v0
.end method

.method public final n()Lcom/hiya/stingray/t/h1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    return-object v0
.end method

.method public final o()Lcom/hiya/stingray/t/h1/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/h1/d;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", addressComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reservation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->h:Lcom/hiya/stingray/t/h1/d$a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->i:Lcom/hiya/stingray/t/h1/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-wide v0, p0, Lcom/hiya/stingray/t/h1/d;->o:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->p:Lcom/hiya/stingray/t/n;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->s:Lcom/hiya/stingray/t/h1/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->t:Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/t/h1/d;->u:Lcom/hiya/stingray/t/h1/f;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
