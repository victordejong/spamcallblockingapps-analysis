.class public final Le/a/t/a/x/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/x/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/x/e;


# direct methods
.method public constructor <init>(Le/a/t/a/x/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/x/e$c;->a:Le/a/t/a/x/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "emoji"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Le/a/t/a/u/d;)V
    .locals 7

    const-string v0, "emoji"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/t/a/x/e$c;->a:Le/a/t/a/x/e;

    invoke-virtual {v1}, Le/a/t/a/x/e;->h()Le/a/t/a/x/f;

    move-result-object v1

    check-cast v1, Le/a/t/a/x/h;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/t/a/x/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t/a/x/g;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, v1, Le/a/t/a/x/h;->i:Le/a/q2/a;

    const-string v2, "EmojiSearch"

    const-string v3, "type"

    .line 5
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iget v1, v1, Le/a/t/a/x/h;->e:I

    int-to-double v5, v1

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v5, "value"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 11
    iget-object v0, p0, Le/a/t/a/x/e$c;->a:Le/a/t/a/x/e;

    .line 12
    invoke-virtual {v0}, Le/a/t/a/x/e;->g()Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;->setEmojiClickListener(Le/a/t/a/o;)V

    .line 14
    iget-object v0, p0, Le/a/t/a/x/e$c;->a:Le/a/t/a/x/e;

    .line 15
    iget-object v0, v0, Le/a/t/a/x/e;->t:Le/a/t/a/o;

    .line 16
    invoke-interface {v0, p1}, Le/a/t/a/o;->d(Le/a/t/a/u/d;)V

    return-void
.end method
