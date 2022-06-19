.class public Lcom/truecaller/data/entity/Number;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"

# interfaces
.implements Le/a/k3/l/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;",
        ">;",
        "Le/a/k3/l/e;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[I

.field public static c:Ljava/lang/String;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/truecaller/data/entity/Number;->b:[I

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/Number$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Number$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Number;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x2
        0x11
        0x1
        0x3
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/data/entity/Number;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/Number;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-direct {v0, v1}, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    .line 5
    iget p1, p1, Lcom/truecaller/data/entity/Number;->a:I

    .line 6
    iput p1, p0, Lcom/truecaller/data/entity/Number;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lcom/truecaller/data/entity/Number;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/truecaller/data/entity/Number;->k(Ljava/lang/String;)Le/m/f/a/j;

    move-result-object v0

    .line 11
    sget-object v1, Le/m/f/a/p;->c:Le/m/f/a/p;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 12
    sget-object v3, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 14
    :cond_0
    iget-object p2, v0, Le/m/f/a/j;->f:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 15
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid country iso: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, v2}, Le/m/f/a/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    iget-object p2, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v0, p2

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 20
    check-cast p2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    .line 21
    sget-object p2, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    invoke-virtual {p0, p2}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0, p1, v2}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p2

    .line 23
    invoke-virtual {v1, p2}, Le/m/f/a/p;->b(Le/m/f/a/o;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p2}, Le/m/f/a/j;->G(Le/m/f/a/o;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v0, p2}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, p2, v1}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    sget-object v1, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-virtual {v0, p2, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/truecaller/data/entity/Number;->t(Ljava/lang/String;)V

    .line 27
    sget-object v1, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    invoke-virtual {v0, p2, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/truecaller/data/entity/Number;->s(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v3, v1

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 29
    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v3, v1

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 31
    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    .line 32
    :goto_1
    iget v1, p2, Le/m/f/a/o;->b:I

    .line 33
    iget-object v3, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, p2}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    .line 35
    :goto_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p2

    if-nez p2, :cond_6

    .line 36
    invoke-virtual {p0, v2}, Lcom/truecaller/data/entity/Number;->setCountryCode(Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_6
    iget-object p2, p2, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v0}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/truecaller/data/entity/Number;->setCountryCode(Ljava/lang/String;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 38
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_3
    return-void

    .line 40
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/truecaller/data/entity/Number;

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/truecaller/data/entity/Number;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/truecaller/data/entity/Number;->t(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/truecaller/data/entity/Number;->w(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/truecaller/data/entity/Number;->setCountryCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Le/m/f/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-virtual {p0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-static {p0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    .line 5
    :cond_2
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/truecaller/data/entity/Number;->k(Ljava/lang/String;)Le/m/f/a/j;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1

    .line 6
    invoke-static {}, Le/m/f/a/h;->a()Le/m/f/a/h;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Le/m/f/a/h;->b(Le/m/f/a/o;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 9
    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :catch_2
    :cond_1
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    const-string v1, "+"

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Le/a/b0/q/c0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/truecaller/data/entity/Number;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    .line 8
    :try_start_0
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Le/m/f/a/j$c;->b:Le/m/f/a/j$c;

    invoke-static {v0, v1, v2}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/Number;->a:I

    return v0
.end method

.method public getTcId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->id:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Le/m/f/a/j$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->numberType:Ljava/lang/String;

    sget-object v1, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-static {v0, v1}, Le/a/b0/q/c0;->l(Ljava/lang/String;Le/m/f/a/j$d;)Le/m/f/a/j$d;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamScore:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mergeEquals(Le/a/k3/l/e;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/truecaller/data/entity/Number;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamType:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telTypeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/data/entity/Number;->a:I

    return-void
.end method

.method public setTcId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->id:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    return-void
.end method

.method public v(Le/m/f/a/j$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->numberType:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/entity/RowEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/truecaller/data/entity/Number;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamScore:Ljava/lang/String;

    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telTypeLabel:Ljava/lang/String;

    return-void
.end method
