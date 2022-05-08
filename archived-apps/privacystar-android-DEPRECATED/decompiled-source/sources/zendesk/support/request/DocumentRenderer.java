package zendesk.support.request;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.Xml;
import android.view.View;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.StringUtils;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.HttpUrl;
import org.apache.commons.p018io.IOUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import zendesk.commonui.UiConfig;
import zendesk.support.ZendeskDeepLinkHelper;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer.class */
class DocumentRenderer {
    private final ZendeskDeepLinkHelper deepLinkHelper;
    private final Style.Factory styleFactory;
    private final UiConfig uiConfig;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.support.request.DocumentRenderer$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$1.class */
    public static /* synthetic */ class C28411 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type = new int[Node.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.B.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H1.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H2.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H3.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H4.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H5.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.H6.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.I.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.Code.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.A.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.P.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.Div.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.Br.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.Img.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[Node.Type.Li.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$HtmlParser.class */
    static class HtmlParser {
        private static final Set<String> UNCLOSED_TAGS = new HashSet(Arrays.asList("br", "hr", "img"));
        private final XmlPullParser xpp;

        /* JADX INFO: Access modifiers changed from: package-private */
        public HtmlParser() {
            try {
                try {
                    XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
                    newInstance.setValidating(false);
                    newInstance.setFeature(Xml.FEATURE_RELAXED, true);
                    this.xpp = newInstance.newPullParser();
                } catch (XmlPullParserException e) {
                    Logger.m289w("RequestActivity", "Unable to parse rich text. Error: '%s' | '%s'", e.getLocalizedMessage());
                    this.xpp = null;
                }
            } catch (Throwable th) {
                this.xpp = null;
                throw th;
            }
        }

        @VisibleForTesting
        HtmlParser(XmlPullParser xmlPullParser) {
            this.xpp = xmlPullParser;
        }

        private Node endTag(Node node) {
            return node.getParent();
        }

        private Map<String, String> getAttributes() {
            int attributeCount = this.xpp.getAttributeCount();
            HashMap hashMap = new HashMap(Math.max(0, attributeCount));
            if (attributeCount > 0) {
                for (int i = 0; i < attributeCount; i++) {
                    hashMap.put(this.xpp.getAttributeName(i), this.xpp.getAttributeValue(i));
                }
            }
            return hashMap;
        }

        private Node startDocument() {
            return Node.withTag(Node.Type.Document.getTag(), null, getAttributes());
        }

        private Node startTag(Node node) {
            String name = this.xpp.getName();
            Node withTag = Node.withTag(name, node, getAttributes());
            node.addChild(withTag);
            if (!UNCLOSED_TAGS.contains(name)) {
                node = withTag;
            }
            return node;
        }

        private void text(Node node) {
            String trim = this.xpp.getText().trim();
            if (StringUtils.hasLength(trim)) {
                node.addChild(Node.withContent(node, trim, getAttributes()));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public RichRenderingDocument parse(String str, String str2) {
            try {
                this.xpp.setInput(new StringReader(str));
                int eventType = this.xpp.getEventType();
                Node node = null;
                Node node2 = null;
                while (eventType != 1) {
                    if (eventType == 0) {
                        node = startDocument();
                        node2 = node;
                    } else {
                        if (eventType == 2) {
                            node2 = startTag(node2);
                        } else if (eventType == 3) {
                            node2 = endTag(node2);
                        } else {
                            node = node;
                            node2 = node2;
                            if (eventType == 4) {
                                text(node2);
                                node2 = node2;
                                node = node;
                            }
                        }
                        node = node;
                    }
                    eventType = this.xpp.next();
                }
                if (node == node2) {
                    return new RichRenderingDocument(node, str2);
                }
            } catch (Exception e) {
                Logger.m289w("RequestActivity", "Unable to parse rich text. Error: '%s' | '%s'", e.getLocalizedMessage(), str);
            }
            return new RichRenderingDocument(null, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Node.class */
    public static class Node {
        private final Map<String, String> attributes;
        private final List<Node> children;
        private final Node parent;
        private final String text;
        private final Type type;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Node$Type.class */
        public enum Type {
            B("b"),
            I("i"),
            Code("code"),
            H1("h1"),
            H2("h2"),
            H3("h3"),
            H4("h4"),
            H5("h5"),
            H6("h6"),
            Strong("strong"),
            U("u"),
            Em("em"),
            Br("br"),
            Hr("hr"),
            Div("div"),
            P("p"),
            Li("li"),
            A("a"),
            Ol("ol"),
            Ul("ul"),
            Img("img"),
            Text("$text"),
            Document("$document"),
            Unknown("$unknown");
            
            private final String tag;

            Type(String str) {
                this.tag = str;
            }

            static Type forTag(String str) {
                Type[] values;
                for (Type type : values()) {
                    if (type.getTag().equalsIgnoreCase(str)) {
                        return type;
                    }
                }
                return Unknown;
            }

            public String getTag() {
                return this.tag;
            }
        }

        private Node(Type type, String str, List<Node> list, Node node, Map<String, String> map) {
            this.type = type;
            this.text = str;
            this.children = list;
            this.parent = node;
            this.attributes = map;
        }

        static Node withContent(Node node, String str, Map<String, String> map) {
            return new Node(Type.Text, str, new ArrayList(), node, map);
        }

        static Node withTag(String str, Node node, Map<String, String> map) {
            return new Node(Type.forTag(str), null, new ArrayList(), node, map);
        }

        void addChild(Node node) {
            this.children.add(node);
        }

        Map<String, String> getAttributes() {
            return this.attributes;
        }

        List<Node> getChildren() {
            return this.children;
        }

        public Node getParent() {
            return this.parent;
        }

        public CharSequence getText() {
            return this.text;
        }

        public Type getType() {
            return this.type;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$RichRenderingDocument.class */
    static class RichRenderingDocument {
        private final String fallbackText;
        private final Node tree;

        RichRenderingDocument(Node node, String str) {
            this.tree = node;
            this.fallbackText = str;
        }

        String getFallbackText() {
            return this.fallbackText;
        }

        Node getNodeTree() {
            return this.tree;
        }

        boolean isValid() {
            return this.tree != null && !this.tree.getChildren().isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style.class */
    public interface Style {

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Bold.class */
        public static class Bold implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.applySpan(SpannableHelper.foldStrings(list), new StyleSpan(1));
            }
        }

        /* renamed from: zendesk.support.request.DocumentRenderer$Style$Br */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Br.class */
        public static class C2842Br implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.foldStrings(Arrays.asList(SpannableHelper.foldStrings(list), StringUtils.LINE_SEPARATOR));
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$CodeSpan.class */
        public static class CodeSpan implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.applySpan(SpannableHelper.foldStrings(list), new TypefaceSpan("monospace"));
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Factory.class */
        public static class Factory {
            private final Context context;

            Factory(Context context) {
                this.context = context;
            }

            Style getStyleForType(Node.Type type) {
                switch (C28411.$SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type[type.ordinal()]) {
                    case 1:
                        return new Bold();
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        return new Header();
                    case 8:
                        return new Italic();
                    case 9:
                        return new CodeSpan();
                    case 10:
                        return new Link();
                    case 11:
                    case 12:
                    case 13:
                        return new C2842Br();
                    case 14:
                        return new Image(this.context.getResources());
                    case 15:
                        return new C2843Li();
                    default:
                        return new Unknown();
                }
            }

            Spannable getStyledText(CharSequence charSequence) {
                return new SpannableString(charSequence);
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Header.class */
        public static class Header extends Bold {
            @Override // zendesk.support.request.DocumentRenderer.Style.Bold, zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.foldStrings(Arrays.asList(super.applyStyle(list, map), StringUtils.LINE_SEPARATOR));
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Image.class */
        public static class Image implements Style {
            private final Resources resources;

            Image(Resources resources) {
                this.resources = resources;
            }

            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                String str = map.get("src");
                String queryParameter = HttpUrl.parse(str).queryParameter("name");
                String string = this.resources.getString(C1790R.string.request_message_inline_image_title_format);
                if (queryParameter == null) {
                    queryParameter = "Image";
                }
                return SpannableHelper.applySpan(new SpannableString(String.format(string, queryParameter)), new URLSpan(str));
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Italic.class */
        public static class Italic implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.applySpan(SpannableHelper.foldStrings(list), new StyleSpan(2));
            }
        }

        /* renamed from: zendesk.support.request.DocumentRenderer$Style$Li */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Li.class */
        public static class C2843Li implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
                for (CharSequence charSequence : list) {
                    spannableStringBuilder.append((CharSequence) StringUtils.LINE_SEPARATOR).append(charSequence);
                }
                return new SpannableString(spannableStringBuilder);
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Link.class */
        public static class Link implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                SpannableString foldStrings = SpannableHelper.foldStrings(list);
                String str = map.get("href");
                SpannableString spannableString = foldStrings;
                if (StringUtils.hasLength(str)) {
                    spannableString = SpannableHelper.applySpan(foldStrings, new URLSpan(str));
                }
                return spannableString;
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$SpannableHelper.class */
        public static class SpannableHelper {
            private SpannableHelper() {
            }

            static SpannableString applySpan(CharSequence charSequence, Object obj) {
                SpannableString spannableString = new SpannableString(charSequence);
                spannableString.setSpan(obj, 0, spannableString.length(), 33);
                return spannableString;
            }

            static SpannableString foldStrings(List<CharSequence> list) {
                return new SpannableString(TextUtils.concat((CharSequence[]) list.toArray(new CharSequence[list.size()])));
            }

            static SpannableString trimSpannable(Spannable spannable) {
                String obj = spannable.toString();
                int i = 0;
                while (obj.length() > 0 && obj.startsWith(IOUtils.LINE_SEPARATOR_UNIX)) {
                    obj = obj.substring(1);
                    i++;
                }
                int i2 = 0;
                while (obj.length() > 0 && obj.endsWith(IOUtils.LINE_SEPARATOR_UNIX)) {
                    obj = obj.substring(0, obj.length() - 1);
                    i2++;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannable);
                SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder2 = spannableStringBuilder;
                    if (spannable.length() - i2 > 0) {
                        spannableStringBuilder2 = spannableStringBuilder;
                        if (spannable.length() - i2 != spannable.length()) {
                            spannableStringBuilder2 = spannableStringBuilder.delete(spannable.length() - i2, spannable.length());
                        }
                    }
                }
                SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder2;
                if (i > 0) {
                    spannableStringBuilder3 = spannableStringBuilder2;
                    if (i < spannable.length()) {
                        spannableStringBuilder3 = spannableStringBuilder2.delete(0, i);
                    }
                }
                return new SpannableString(spannableStringBuilder3);
            }
        }

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$Style$Unknown.class */
        public static class Unknown implements Style {
            @Override // zendesk.support.request.DocumentRenderer.Style
            public Spannable applyStyle(List<CharSequence> list, Map<String, String> map) {
                return SpannableHelper.foldStrings(list);
            }
        }

        Spannable applyStyle(List<CharSequence> list, Map<String, String> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/DocumentRenderer$ZendeskUrlSpan.class */
    public static class ZendeskUrlSpan extends URLSpan {
        private final ZendeskDeepLinkHelper deepLinkHelper;
        private final UiConfig uiConfig;

        ZendeskUrlSpan(String str, @NonNull ZendeskDeepLinkHelper zendeskDeepLinkHelper, @Nullable UiConfig uiConfig) {
            super(str);
            this.deepLinkHelper = zendeskDeepLinkHelper;
            this.uiConfig = uiConfig;
        }

        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
        public void onClick(View view) {
            if (!this.deepLinkHelper.launch(getURL(), this.uiConfig, view.getContext())) {
                super.onClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DocumentRenderer(@NonNull Context context, @NonNull ZendeskDeepLinkHelper zendeskDeepLinkHelper, @Nullable UiConfig uiConfig) {
        this.styleFactory = new Style.Factory(context);
        this.deepLinkHelper = zendeskDeepLinkHelper;
        this.uiConfig = uiConfig;
    }

    @VisibleForTesting
    DocumentRenderer(Style.Factory factory, ZendeskDeepLinkHelper zendeskDeepLinkHelper, UiConfig uiConfig) {
        this.styleFactory = factory;
        this.deepLinkHelper = zendeskDeepLinkHelper;
        this.uiConfig = uiConfig;
    }

    private Spannable installClickableLinks(Spannable spannable) {
        return replaceUrlSpans(linkifyAll(spannable));
    }

    private static Spannable linkifyAll(Spannable spannable) {
        URLSpan[] uRLSpanArr;
        SpannableString spannableString = new SpannableString(spannable);
        if (Linkify.addLinks(spannableString, 15)) {
            for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
                spannable.setSpan(uRLSpan, spannableString.getSpanStart(uRLSpan), spannableString.getSpanEnd(uRLSpan), 33);
            }
        }
        return spannable;
    }

    private CharSequence render(Node node) {
        return Style.SpannableHelper.trimSpannable(installClickableLinks(reduce(node)));
    }

    private Spannable replaceUrlSpans(Spannable spannable) {
        URLSpan[] uRLSpanArr;
        SpannableString spannableString = new SpannableString(spannable);
        for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
            String url = uRLSpan.getURL();
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            spannableString.setSpan(new ZendeskUrlSpan(url, this.deepLinkHelper, this.uiConfig), spanStart, spanEnd, 33);
        }
        return spannableString;
    }

    @VisibleForTesting
    Spannable reduce(Node node) {
        Node.Type type = node.getType();
        List<Node> children = node.getChildren();
        if (type == Node.Type.Text) {
            return this.styleFactory.getStyledText(node.getText());
        }
        ArrayList arrayList = new ArrayList(children.size());
        for (Node node2 : children) {
            arrayList.add(reduce(node2));
        }
        return this.styleFactory.getStyleForType(type).applyStyle(arrayList, node.getAttributes());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence render(RichRenderingDocument richRenderingDocument) {
        return richRenderingDocument.isValid() ? render(richRenderingDocument.getNodeTree()) : installClickableLinks(new SpannableString(richRenderingDocument.getFallbackText()));
    }
}
