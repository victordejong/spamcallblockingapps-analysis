.class public final Le/a/h/b/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Le/m/f/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/m/f/a/a;

    invoke-direct {v0, p1}, Le/m/f/a/a;-><init>(Ljava/lang/String;)V

    const-string p1, "PhoneNumberUtil.getInsta\u2026ypeFormatter(countryCode)"

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    return-void
.end method


# virtual methods
.method public final a(CZ)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Le/m/f/a/a;->k(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Le/m/f/a/a;->a:Ljava/lang/String;

    const-string p2, "formatter.inputDigitAndR\u2026osition(lastNonSeparator)"

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Le/m/f/a/a;->k(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Le/m/f/a/a;->a:Ljava/lang/String;

    const-string p2, "formatter.inputDigit(lastNonSeparator)"

    .line 5
    :goto_0
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "editable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/h/b/e/d;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Le/a/h/b/e/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Le/a/h/b/e/d;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr v0, v2

    .line 7
    iget-object v3, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    invoke-virtual {v3}, Le/m/f/a/a;->g()V

    int-to-char v3, v1

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_6

    .line 9
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 10
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p0, v3, v7}, Le/a/h/b/e/d;->a(CZ)Ljava/lang/String;

    move-result-object v5

    move v7, v1

    :cond_3
    move v3, v8

    :cond_4
    if-ne v6, v0, :cond_5

    move v7, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p0, v3, v7}, Le/a/h/b/e/d;->a(CZ)Ljava/lang/String;

    move-result-object v5

    :cond_7
    move-object v0, v5

    if-eqz v0, :cond_c

    .line 13
    iget-object v3, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    .line 14
    iget-boolean v4, v3, Le/m/f/a/a;->f:Z

    if-nez v4, :cond_8

    .line 15
    iget v3, v3, Le/m/f/a/a;->o:I

    move v8, v3

    goto :goto_2

    :cond_8
    move v4, v1

    move v5, v4

    .line 16
    :goto_1
    iget v6, v3, Le/m/f/a/a;->p:I

    if-ge v5, v6, :cond_a

    iget-object v6, v3, Le/m/f/a/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 17
    iget-object v6, v3, Le/m/f/a/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    iget-object v7, v3, Le/m/f/a/a;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_9

    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    move v8, v4

    .line 19
    :goto_2
    iput-boolean v2, p0, Le/a/h/b/e/d;->a:Z

    const/4 v3, 0x0

    .line 20
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p1

    move-object v5, v0

    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    invoke-static {p1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 23
    :cond_b
    iput-boolean v1, p0, Le/a/h/b/e/d;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/CharSequence;II)Z
    .locals 1

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p4, "s"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p4, p0, Le/a/h/b/e/d;->a:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Le/a/h/b/e/d;->b:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/a/h/b/e/d;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/h/b/e/d;->b:Z

    .line 4
    iget-object p1, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    invoke-virtual {p1}, Le/m/f/a/a;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p3, "s"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p3, p0, Le/a/h/b/e/d;->a:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Le/a/h/b/e/d;->b:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Le/a/h/b/e/d;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/h/b/e/d;->b:Z

    .line 4
    iget-object p1, p0, Le/a/h/b/e/d;->c:Le/m/f/a/a;

    invoke-virtual {p1}, Le/m/f/a/a;->g()V

    :cond_1
    :goto_0
    return-void
.end method
