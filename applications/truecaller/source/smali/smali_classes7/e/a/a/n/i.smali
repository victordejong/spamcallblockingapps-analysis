.class public final Le/a/a/n/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/h;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/a/g/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/ContentResolver;Le/a/a/g/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/n/i;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/a/n/i;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/n/i;->c:Le/a/a/g/g;

    return-void
.end method


# virtual methods
.method public a(JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/truecaller/messaging/mediamanager/AttachmentType;",
            "Lcom/truecaller/messaging/mediamanager/SortOption;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    iget-object v12, v11, Le/a/a/n/i;->a:Ls1/w/f;

    new-instance v13, Le/a/a/n/i$a;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move-wide v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Le/a/a/n/i$a;-><init>(Le/a/a/n/i;Lcom/truecaller/messaging/mediamanager/AttachmentType;Ljava/lang/String;Lcom/truecaller/messaging/mediamanager/SortOption;JII[Ljava/lang/String;Ls1/w/d;)V

    move-object/from16 v0, p9

    invoke-static {v12, v13, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(JIILs1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p5, p0, Le/a/a/n/i;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {p1, p2, p3, p4}, Le/a/b0/q/g0;->h(JII)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "MessageAttachmentsQuery.\u2026d, filter, splitCriteria)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\n    entity_mime_type NOT IN (\n        \'image/gif\',\n        \'tenor/gif\',\n        \'application/vnd.truecaller.location\'\n    ) AND (\n        entity_mime_type != \'text/plain\' OR\n        entity_link IS NOT NULL\n    )\n"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "COUNT()"

    const/4 p4, 0x0

    .line 6
    invoke-static {p5, p1, p3, p2, p4}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method
