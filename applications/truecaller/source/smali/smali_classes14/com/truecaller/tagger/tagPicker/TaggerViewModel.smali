.class public final Lcom/truecaller/tagger/tagPicker/TaggerViewModel;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u00106\u001a\u000203\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0017\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\n\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R6\u0010!\u001a\"\u0012\u001e\u0012\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u001e\u0012\u0004\u0012\u00020\u001f0\u001c0\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R;\u0010-\u001a$\u0012 \u0012\u001e\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u001f0\u001c0\'0&8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001c\u00102\u001a\u0008\u0012\u0004\u0012\u00020/0.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105RB\u0010:\u001a\"\u0012\u001e\u0012\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u001e\u0012\u0004\u0012\u00020\u001f0\u001c0&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010*\u001a\u0004\u00087\u0010,\"\u0004\u00088\u00109R\u001f\u0010=\u001a\u0008\u0012\u0004\u0012\u00020/0&8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010*\u001a\u0004\u0008<\u0010,R8\u0010?\u001a$\u0012 \u0012\u001e\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u001f0\u001c0\'0.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00101\u00a8\u0006B"
    }
    d2 = {
        "Lcom/truecaller/tagger/tagPicker/TaggerViewModel;",
        "Ln3/v/y0;",
        "",
        "id",
        "Le/a/b0/p/c;",
        "d",
        "(J)Le/a/b0/p/c;",
        "selectedParentTag",
        "selectedChildTag",
        "Ls1/s;",
        "e",
        "(Le/a/b0/p/c;Le/a/b0/p/c;)V",
        "onCleared",
        "()V",
        "Le/a/r2/a;",
        "a",
        "Le/a/r2/a;",
        "updateHandle",
        "Le/a/r2/f;",
        "Le/a/g5/n;",
        "k",
        "Le/a/r2/f;",
        "tagDataSaver",
        "Le/a/r2/l;",
        "j",
        "Le/a/r2/l;",
        "actorsThreads",
        "Ln3/v/i0;",
        "Ls1/o;",
        "",
        "",
        "",
        "Ln3/v/i0;",
        "_tagLiveData",
        "Le/a/g5/c0/a;",
        "h",
        "Le/a/g5/c0/a;",
        "tagRepository",
        "Landroidx/lifecycle/LiveData;",
        "Le/a/g5/b0/a;",
        "Lcom/truecaller/data/entity/Contact;",
        "g",
        "Landroidx/lifecycle/LiveData;",
        "getCloseEvent",
        "()Landroidx/lifecycle/LiveData;",
        "closeEvent",
        "Ln3/v/k0;",
        "Le/a/g5/e0/d;",
        "b",
        "Ln3/v/k0;",
        "_tagInitialData",
        "Le/a/g5/p;",
        "i",
        "Le/a/g5/p;",
        "tagDisplayUtil",
        "getTagLiveData",
        "setTagLiveData",
        "(Landroidx/lifecycle/LiveData;)V",
        "tagLiveData",
        "c",
        "getTagInitialData",
        "tagInitialData",
        "f",
        "_closeEvent",
        "<init>",
        "(Le/a/g5/c0/a;Le/a/g5/p;Le/a/r2/l;Le/a/r2/f;)V",
        "tagger_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/r2/a;

.field public b:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Le/a/g5/e0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Le/a/g5/e0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/v/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/i0<",
            "Ls1/o<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ls1/o<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Le/a/g5/b0/a<",
            "Ls1/o<",
            "Le/a/b0/p/c;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Le/a/g5/b0/a<",
            "Ls1/o<",
            "Le/a/b0/p/c;",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final h:Le/a/g5/c0/a;

.field public final i:Le/a/g5/p;

.field public final j:Le/a/r2/l;

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/g5/c0/a;Le/a/g5/p;Le/a/r2/l;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/g5/c0/a;",
            "Le/a/g5/p;",
            "Le/a/r2/l;",
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tagRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDataSaver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->h:Le/a/g5/c0/a;

    iput-object p2, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->i:Le/a/g5/p;

    iput-object p3, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->j:Le/a/r2/l;

    iput-object p4, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->k:Le/a/r2/f;

    .line 2
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->b:Ln3/v/k0;

    .line 3
    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c:Landroidx/lifecycle/LiveData;

    .line 4
    new-instance p1, Ln3/v/i0;

    invoke-direct {p1}, Ln3/v/i0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d:Ln3/v/i0;

    .line 5
    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->e:Landroidx/lifecycle/LiveData;

    .line 6
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->f:Ln3/v/k0;

    .line 7
    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->g:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static c(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;JLjava/lang/String;ZI)V
    .locals 1

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    iget-object p5, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d:Ln3/v/i0;

    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->h:Le/a/g5/c0/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/g5/c0/a;->a(JLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Le/a/g5/e0/s;

    invoke-direct {p2, p0, p3, p4}, Le/a/g5/e0/s;-><init>(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;Ljava/lang/String;Z)V

    invoke-virtual {p5, p1, p2}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-void
.end method


# virtual methods
.method public final d(J)Le/a/b0/p/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->h:Le/a/g5/c0/a;

    invoke-interface {v0, p1, p2}, Le/a/g5/c0/a;->y1(J)Le/a/b0/p/c;

    move-result-object p1

    return-object p1
.end method

.method public final e(Le/a/b0/p/c;Le/a/b0/p/c;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1
    :goto_0
    iget-object p2, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/g5/e0/d;

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p2, Le/a/g5/e0/d;->b:Le/a/b0/p/c;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :cond_5
    :goto_2
    if-eqz v2, :cond_c

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag changed to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/g5/e0/d;

    if-eqz p2, :cond_b

    .line 6
    iget-object p2, p2, Le/a/g5/e0/d;->d:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_b

    .line 7
    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->a:Le/a/r2/a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_6
    const-wide/16 v2, -0x1

    if-eqz p1, :cond_7

    .line 8
    iget-wide v4, p1, Le/a/b0/p/c;->c:J

    goto :goto_3

    :cond_7
    move-wide v4, v2

    :goto_3
    if-eqz p1, :cond_8

    .line 9
    iget-wide v2, p1, Le/a/b0/p/c;->a:J

    :cond_8
    move-wide v6, v2

    .line 10
    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->k:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/g5/n;

    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/e0/d;

    if-eqz v0, :cond_9

    .line 11
    iget v1, v0, Le/a/g5/e0/d;->a:I

    :cond_9
    move v8, v1

    .line 12
    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/e0/d;

    if-eqz v0, :cond_a

    .line 13
    iget v0, v0, Le/a/g5/e0/d;->c:I

    goto :goto_4

    :cond_a
    const/16 v0, 0x3e7

    :goto_4
    move v9, v0

    move-object v3, p2

    .line 14
    invoke-interface/range {v2 .. v9}, Le/a/g5/n;->b(Lcom/truecaller/data/entity/Contact;JJII)Le/a/r2/x;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->j:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/g5/e0/t;

    invoke-direct {v2, p2, p0, p1}, Le/a/g5/e0/t;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/tagger/tagPicker/TaggerViewModel;Le/a/b0/p/c;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->a:Le/a/r2/a;

    goto :goto_5

    .line 16
    :cond_b
    iget-object p2, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->f:Ln3/v/k0;

    new-instance v1, Le/a/g5/b0/a;

    new-instance v2, Ls1/o;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, p1, v0, v3}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Le/a/g5/b0/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_5

    .line 17
    :cond_c
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->f:Ln3/v/k0;

    new-instance p2, Le/a/g5/b0/a;

    new-instance v1, Ls1/o;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v0, v2}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v1}, Le/a/g5/b0/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/v/y0;->onCleared()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->a:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->a:Le/a/r2/a;

    return-void
.end method
