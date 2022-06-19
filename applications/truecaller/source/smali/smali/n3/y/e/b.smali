.class public Ln3/y/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/b$a;,
        Ln3/y/e/b$c;,
        Ln3/y/e/b$b;,
        Ln3/y/e/b$e;,
        Ln3/y/e/b$f;,
        Ln3/y/e/b$g;,
        Ln3/y/e/b$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Ln3/y/e/b$d;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ln3/y/e/b$c;

.field public f:Ln3/y/e/b$c;

.field public g:Ln3/y/e/b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ln3/y/e/b;->h:Z

    return-void
.end method

.method public constructor <init>(Ln3/y/e/b$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ln3/y/e/b;->b:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Ln3/y/e/b;->c:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln3/y/e/b;->d:I

    .line 5
    new-instance v0, Ln3/y/e/b$c;

    invoke-direct {v0}, Ln3/y/e/b$c;-><init>()V

    iput-object v0, p0, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    .line 6
    new-instance v0, Ln3/y/e/b$c;

    invoke-direct {v0}, Ln3/y/e/b$c;-><init>()V

    iput-object v0, p0, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    .line 7
    new-instance v0, Ln3/y/e/b$c;

    invoke-direct {v0}, Ln3/y/e/b$c;-><init>()V

    iput-object v0, p0, Ln3/y/e/b;->g:Ln3/y/e/b$c;

    .line 8
    iput-object p1, p0, Ln3/y/e/b;->a:Ln3/y/e/b$d;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y/e/b$c;
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/e/b;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/e/b;->g:Ln3/y/e/b$c;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/b;->f:Ln3/y/e/b$c;

    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    return-object v0
.end method

.method public final b()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/e/b;->a:Ln3/y/e/b$d;

    if-eqz v1, :cond_f

    .line 2
    move-object v2, v1

    check-cast v2, Ln3/y/e/c$a;

    .line 3
    iget-object v2, v2, Ln3/y/e/f;->c:Ln3/y/e/a;

    .line 4
    iget-object v3, v0, Ln3/y/e/b;->e:Ln3/y/e/b$c;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    if-gt v6, v5, :cond_c

    .line 7
    iget-object v8, v3, Ln3/y/e/b$c;->b:[Ln3/y/e/b$b;

    aget-object v9, v8, v6

    if-eqz v9, :cond_b

    aget-object v8, v8, v6

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v11, v8, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 10
    :goto_1
    iget-object v15, v8, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v7, v15, :cond_a

    .line 11
    iget-object v15, v8, Ln3/y/e/b$b;->b:[Ln3/y/e/b$g;

    aget-object v16, v15, v7

    if-eqz v16, :cond_0

    .line 12
    aget-object v15, v15, v7

    goto :goto_2

    .line 13
    :cond_0
    iget-object v15, v8, Ln3/y/e/b$b;->c:[Ln3/y/e/b$g;

    aget-object v16, v15, v7

    if-eqz v16, :cond_2

    if-ltz v12, :cond_1

    if-gez v13, :cond_2

    .line 14
    :cond_1
    aget-object v15, v15, v7

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_4

    if-ltz v12, :cond_3

    if-ltz v13, :cond_3

    .line 15
    invoke-virtual {v8, v9, v15, v12, v7}, Ln3/y/e/b$b;->a(Landroid/text/SpannableStringBuilder;Ln3/y/e/b$g;II)V

    :cond_3
    move v12, v7

    move-object v14, v15

    .line 16
    :cond_4
    iget-object v15, v8, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v10, 0xa0

    if-eq v15, v10, :cond_5

    if-gez v13, :cond_9

    move v13, v7

    goto :goto_5

    :cond_5
    if-ltz v13, :cond_9

    .line 17
    iget-object v10, v8, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v15, 0x20

    if-ne v10, v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, -0x1

    .line 18
    :goto_3
    iget-object v10, v8, Ln3/y/e/b$b;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_7

    move v10, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v7, 0x1

    .line 19
    :goto_4
    new-instance v11, Ln3/y/e/b$e;

    iget v15, v2, Ln3/y/e/a;->b:I

    invoke-direct {v11, v15}, Ln3/y/e/b$e;-><init>(I)V

    const/16 v15, 0x21

    invoke-virtual {v9, v11, v13, v10, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-ltz v12, :cond_8

    .line 20
    invoke-virtual {v8, v9, v14, v12, v10}, Ln3/y/e/b$b;->a(Landroid/text/SpannableStringBuilder;Ln3/y/e/b$g;II)V

    :cond_8
    const/4 v13, -0x1

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    move-object v10, v9

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    .line 21
    :goto_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    new-array v2, v5, [Landroid/text/SpannableStringBuilder;

    .line 22
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpannableStringBuilder;

    .line 23
    check-cast v1, Ln3/y/e/c$a;

    .line 24
    iget-object v3, v1, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    check-cast v3, Ln3/y/e/c$a$a;

    .line 25
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    :goto_7
    if-ge v4, v5, :cond_e

    .line 26
    aget-object v6, v2, v4

    if-eqz v6, :cond_d

    .line 27
    iget-object v6, v3, Ln3/y/e/c$a$a;->a:[Ln3/y/e/c$a$b;

    aget-object v6, v6, v4

    aget-object v8, v2, v4

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 28
    iget-object v6, v3, Ln3/y/e/c$a$a;->a:[Ln3/y/e/c$a$b;

    aget-object v6, v6, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 29
    :cond_d
    iget-object v6, v3, Ln3/y/e/c$a$a;->a:[Ln3/y/e/c$a$b;

    aget-object v6, v6, v4

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 30
    :cond_e
    iget-object v1, v1, Ln3/y/e/f;->d:Ln3/y/e/b0$b$a;

    if-eqz v1, :cond_f

    .line 31
    check-cast v1, Ln3/y/e/z$a;

    .line 32
    iget-object v1, v1, Ln3/y/e/z$a;->a:Ln3/y/e/z;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method
